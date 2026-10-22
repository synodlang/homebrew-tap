class Synod < Formula
  desc "Compiler for the Synod language"
  homepage "https://github.com/synodlang/compiler"
  version "0.2.5"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/synodlang/compiler/releases/download/v0.2.5/synod-v0.2.5-darwin-universal.tar.gz"
    sha256 "db38ec67f6f19450e4745f6257fd6066a9c1180a603bd20d81d72373eb27452b"
  end

  on_linux do
    on_arm do
      url "https://github.com/synodlang/compiler/releases/download/v0.2.5/synod-v0.2.5-linux-arm64.tar.gz"
      sha256 "2fcd4e52aefd5a9d5e68b8c389861ad91eb52d24650b3cd9c609dd3c63d551e9"
    end
    on_intel do
      url "https://github.com/synodlang/compiler/releases/download/v0.2.5/synod-v0.2.5-linux-amd64.tar.gz"
      sha256 "a14196b7b259ee7fe6b848b57b42c6e511176f1a0b1dfcc5d0a2251627f05a90"
    end
  end

  def install
    bin.install "synod"
  end

  test do
    assert_match "language", shell_output("#{bin}/synod version")
  end
end
