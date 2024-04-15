class GenerateLocalChangelog < Formula
  desc "Generate a CHANGELOG for your project using only local git history. No internet connection or git server API is required."
  homepage "https://github.com/neogeek/generate-local-changelog"
  url "https://github.com/neogeek/generate-local-changelog/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "f798a4347f32ece1f8e2709f6776f6e1305f856376cceec693a23fa4199ffeb6"

  def install
    bin.install "bin/generate-local-changelog"
  end

end
