class Synod < Formula
  desc "Compiler for the Synod language"
  homepage "https://github.com/synodlang/compiler"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/synodlang/compiler/releases/download/v0.2.1/synod-v0.2.1-darwin-universal.tar.gz"
    sha256 "66defe4b2bdb2b69b44e94e2487c6fa6805af4711766727d5dee43d5c907d96b"
  end

  on_linux do
    on_arm do
      url "https://github.com/synodlang/compiler/releases/download/v0.2.1/synod-v0.2.1-linux-arm64.tar.gz"
      sha256 "a2f3b67ba7d8eed97fafa74820510305acd14a6e627b92cc9d0fa9151a92c718"
    end
    on_intel do
      url "https://github.com/synodlang/compiler/releases/download/v0.2.1/synod-v0.2.1-linux-amd64.tar.gz"
      sha256 "3a6a81346e427bf876ce01aa786d6630a94b7c940599bab137b3959a29cced24"
    end
  end

  def install
    bin.install "synod"
  end

  test do
    assert_match "language", shell_output("#{bin}/synod version")
  end
end
