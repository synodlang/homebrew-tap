class Synod < Formula
  desc "Compiler for the Synod language"
  homepage "https://github.com/synodlang/compiler"
  version "0.2.6"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/synodlang/compiler/releases/download/v0.2.6/synod-v0.2.6-darwin-universal.tar.gz"
    sha256 "35ed7b6b6efed124691f9d22be364b881302a18918ee565355416c35b1a564c3"
  end

  on_linux do
    on_arm do
      url "https://github.com/synodlang/compiler/releases/download/v0.2.6/synod-v0.2.6-linux-arm64.tar.gz"
      sha256 "f3274018831adaa1b883d1c3c23067fb24d8246d56db9883d5e58465bee12535"
    end
    on_intel do
      url "https://github.com/synodlang/compiler/releases/download/v0.2.6/synod-v0.2.6-linux-amd64.tar.gz"
      sha256 "b41261cabd954070281867e04b48fc5acc2bd93c9c84f9133f72e822c48e3661"
    end
  end

  def install
    bin.install "synod"
  end

  test do
    assert_match "language", shell_output("#{bin}/synod version")
  end
end
