class GenerateLocalChangelog < Formula
  desc "Generate a CHANGELOG for your project using only local git history. No internet connection or git server API is required."
  homepage "https://github.com/neogeek/generate-local-changelog"
  url "https://github.com/neogeek/generate-local-changelog/archive/v1.0.0.tar.gz"
  sha256 "42e155dc87c9db8c514d37f6a748c7c6affb107ab3c1ea9951917786f7be2321"

  def install
    bin.install "bin/generate-local-changelog"
  end

end
