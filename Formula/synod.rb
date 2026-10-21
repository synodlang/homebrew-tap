class Synod < Formula
  desc "Compiler for the Synod language"
  homepage "https://github.com/synodlang/compiler"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/synodlang/compiler/releases/download/v0.2.2/synod-v0.2.2-darwin-universal.tar.gz"
    sha256 "03e815a300eb8a819a5f76076aeb91f2d40370149994ef9a297de1af41eea9bb"
  end

  on_linux do
    on_arm do
      url "https://github.com/synodlang/compiler/releases/download/v0.2.2/synod-v0.2.2-linux-arm64.tar.gz"
      sha256 "d7e75246e188044ef31957ee0857828f720e179ee096d44b032801080f2b8f5e"
    end
    on_intel do
      url "https://github.com/synodlang/compiler/releases/download/v0.2.2/synod-v0.2.2-linux-amd64.tar.gz"
      sha256 "242b33162e80e109123b92a30ae2da1d4ee770b4107b8312ebbcb1551bc79cc3"
    end
  end

  def install
    bin.install "synod"
  end

  test do
    assert_match "language", shell_output("#{bin}/synod version")
  end
end
