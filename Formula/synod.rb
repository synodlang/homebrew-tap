class Synod < Formula
  desc "Compiler for the Synod language"
  homepage "https://github.com/synodlang/compiler"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/synodlang/compiler/releases/download/v0.2.0/synod-v0.2.0-darwin-universal.tar.gz"
    sha256 "532e5456f4f83c23ae1e5cd0e639813529db5c40476df512afc84f16834069f2"
  end

  on_linux do
    on_arm do
      url "https://github.com/synodlang/compiler/releases/download/v0.2.0/synod-v0.2.0-linux-arm64.tar.gz"
      sha256 "fdb1bcecfe9d4bfa16a79fa827d4a5a5c0427ebaf8038031b3e5908c561baf4b"
    end
    on_intel do
      url "https://github.com/synodlang/compiler/releases/download/v0.2.0/synod-v0.2.0-linux-amd64.tar.gz"
      sha256 "b3ec62d5b14cf84e2a2f0d8128e5388fe57299509ec072e3cf11fe94b1412388"
    end
  end

  def install
    bin.install "synod"
  end

  test do
    assert_match "language", shell_output("#{bin}/synod version")
  end
end
