class GenerateLocalChangelog < Formula
  version '2.0.2'
  desc 'Generate a CHANGELOG for your project using only local git history. No internet connection or git server API is required.'
  homepage 'https://github.com/neogeek/generate-local-changelog'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/neogeek/generate-local-changelog/raw/refs/tags/v2.0.2/bin/macos/x86_64/generate-local-changelog'
      sha256 '3ac0e3de73117bd4c4387f45836693889c8ce189c32c370731f98165bacdb8cd'
    elsif Hardware::CPU.arm?
      url 'https://github.com/neogeek/generate-local-changelog/raw/refs/tags/v2.0.2/bin/macos/aarch64/generate-local-changelog'
      sha256 'b4bc0a6ef70ec4c0fa866b24a00fdfbfefd44ca12f3050e7c7e51ff32d8ea01d'
    end
  end

  on_linux do
    url 'https://github.com/neogeek/generate-local-changelog/raw/refs/tags/v2.0.2/bin/linux/generate-local-changelog'
    sha256 '9b10638fbdbfaf30e2611f5f02d30ab9053a9b19ab2abd181febee977f0cdb0f'
  end


  def install
    bin.install 'generate-local-changelog'

    chmod 0755, bin/'generate-local-changelog'
  end

  test do
    assert_match 'generate-local-changelog', shell_output("#{bin}/generate-local-changelog --help")
  end
end
