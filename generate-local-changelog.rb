class GenerateLocalChangelog < Formula
  desc "Generate a CHANGELOG for your project using only local git history. No internet connection or git server API is required."
  homepage "https://github.com/neogeek/generate-local-changelog"
  url "https://github.com/neogeek/generate-local-changelog/archive/v1.0.2.tar.gz"
  sha256 "5cebd30283fe1b5e553448f516fc7976593510fe915462d2284419be2083f8c3"

  def install
    bin.install "bin/generate-local-changelog"
  end

end
