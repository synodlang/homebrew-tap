class Synod < Formula
  desc "Compiler for the Synod language"
  homepage "https://github.com/synodlang/compiler"
  version "0.2.4"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/synodlang/compiler/releases/download/v0.2.4/synod-v0.2.4-darwin-universal.tar.gz"
    sha256 "318f5489927c507f33d77b11f3af848f9f4c3a4c375bfa3915ddbd8c7f57a7b0"
  end

  on_linux do
    on_arm do
      url "https://github.com/synodlang/compiler/releases/download/v0.2.4/synod-v0.2.4-linux-arm64.tar.gz"
      sha256 "cb6d192a25a6cb9af40b6649de8d7d500288d25364772a3d71a76ba3aaa712db"
    end
    on_intel do
      url "https://github.com/synodlang/compiler/releases/download/v0.2.4/synod-v0.2.4-linux-amd64.tar.gz"
      sha256 "8f5a1af7b4fa48a9b37d99c34079b1f1afb05eeece9b832753fbbd22f8ec121d"
    end
  end

  def install
    bin.install "synod"
  end

  test do
    assert_match "language", shell_output("#{bin}/synod version")
  end
end
