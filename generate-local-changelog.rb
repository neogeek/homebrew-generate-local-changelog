class GenerateLocalChangelog < Formula
  desc "Generate a CHANGELOG for your project using only local git history. No internet connection or git server API is required."
  homepage "https://github.com/neogeek/generate-local-changelog"
  url "https://github.com/neogeek/generate-local-changelog/archive/v1.0.3.tar.gz"
  sha256 "f05143e80b12e7fc5f5ecbfc0c37043c17d6be804541d9ce0930b852c81c2907"

  def install
    bin.install "bin/generate-local-changelog"
  end

end
