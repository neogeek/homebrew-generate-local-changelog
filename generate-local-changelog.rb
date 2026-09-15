class GenerateLocalChangelog < Formula
  version '2.0.1'
  desc 'Generate a CHANGELOG for your project using only local git history. No internet connection or git server API is required.'
  homepage 'https://github.com/neogeek/generate-local-changelog'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/neogeek/generate-local-changelog/raw/refs/tags/v2.0.1/bin/macos/x86_64/generate-local-changelog'
      sha256 '2462db725313cb2e30a6873a23ef69ccc3f691659de711cdfa92061b38ea3b12'
    elsif Hardware::CPU.arm?
      url 'https://github.com/neogeek/generate-local-changelog/raw/refs/tags/v2.0.1/bin/macos/aarch64/generate-local-changelog'
      sha256 '85b557c63b7af3466052233b3662632a1253d9ea3561ad0401efd2214296a8c1'
    end
  end

  on_linux do
    url 'https://github.com/neogeek/generate-local-changelog/raw/refs/tags/v2.0.1/bin/linux/generate-local-changelog'
    sha256 '469de7ed1a19983a4628530afe6aa78d3303aa67d48674a6a6679cea2b1a8927'
  end


  def install
    bin.install 'generate-local-changelog'

    chmod 0755, bin/'generate-local-changelog'
  end

  test do
    assert_match 'generate-local-changelog', shell_output("#{bin}/generate-local-changelog --help")
  end
end
