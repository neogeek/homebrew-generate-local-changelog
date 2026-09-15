#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
(

  VERSION=$1

  cd "${SCRIPT_DIR}" || exit

  cd ../

  BASE_URL="https://github.com/neogeek/generate-local-changelog/raw/refs/tags/${VERSION}/bin"

  MACOS_INTEL_URL="${BASE_URL}/macos/x86_64/generate-local-changelog"
  MACOS_ARM_URL="${BASE_URL}/macos/aarch64/generate-local-changelog"
  LINUX_URL="${BASE_URL}/linux/generate-local-changelog"

  MACOS_INTEL_HASH=$(curl -sL "${MACOS_INTEL_URL}" | sha256sum)
  MACOS_ARM_HASH=$(curl -sL "${MACOS_ARM_URL}" | sha256sum)
  LINUX_HASH=$(curl -sL "${LINUX_URL}" | sha256sum)

  cat >generate-local-changelog.rb <<EOF
class GenerateLocalChangelog < Formula
  version '${VERSION//v/}'
  desc 'Generate a CHANGELOG for your project using only local git history. No internet connection or git server API is required.'
  homepage 'https://github.com/neogeek/generate-local-changelog'

  on_macos do
    if Hardware::CPU.intel?
      url '${MACOS_INTEL_URL}'
      sha256 '${MACOS_INTEL_HASH%% *}'
    elsif Hardware::CPU.arm?
      url '${MACOS_ARM_URL}'
      sha256 '${MACOS_ARM_HASH%% *}'
    end
  end

  on_linux do
    url '${LINUX_URL}'
    sha256 '${LINUX_HASH%% *}'
  end


  def install
    bin.install 'generate-local-changelog'

    chmod 0755, bin/'generate-local-changelog'
  end

  test do
    assert_match 'generate-local-changelog', shell_output("#{bin}/generate-local-changelog --help")
  end
end
EOF

)
