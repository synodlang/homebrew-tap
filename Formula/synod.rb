class Synod < Formula
  desc "Compiler for the Synod language"
  homepage "https://github.com/synodlang/compiler"
  version "0.2.7"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/synodlang/compiler/releases/download/v0.2.7/synod-v0.2.7-darwin-universal.tar.gz"
    sha256 "75246e8703d490cc568cd266382f2f648129c7948cd0eacd5a1ea1fd12848be0"
  end

  on_linux do
    on_arm do
      url "https://github.com/synodlang/compiler/releases/download/v0.2.7/synod-v0.2.7-linux-arm64.tar.gz"
      sha256 "342f15a5815d5245765d6916c6025fdb3d71afc2ebb8d41d31e4f4ebdac63bcf"
    end
    on_intel do
      url "https://github.com/synodlang/compiler/releases/download/v0.2.7/synod-v0.2.7-linux-amd64.tar.gz"
      sha256 "066b9478e8a8ff1f6a3f9464eb72c04e46eecf1a79b75ac82ac6525f98bc68c0"
    end
  end

  def install
    bin.install "synod"
  end

  test do
    assert_match "language", shell_output("#{bin}/synod version")
  end
end
