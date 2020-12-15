class GenerateLocalChangelog < Formula
  desc "Generate a CHANGELOG for your project using only local git history. No internet connection or git server API is required."
  homepage "https://github.com/neogeek/generate-local-changelog"
  url "https://github.com/neogeek/generate-local-changelog/archive/v1.0.1.tar.gz"
  sha256 "cde59e7a54a86187245a80600d7f8d910d553ff62f08229d8424aa3d0ac72c90"

  def install
    bin.install "bin/generate-local-changelog"
  end

end
