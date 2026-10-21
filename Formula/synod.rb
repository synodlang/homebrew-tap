class Synod < Formula
  desc "Compiler for the Synod language"
  homepage "https://github.com/synodlang/compiler"
  version "0.2.3"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/synodlang/compiler/releases/download/v0.2.3/synod-v0.2.3-darwin-universal.tar.gz"
    sha256 "f8736eea6a729038a710d71573f7a8b1c2ac0052b6903591947e4a75e0651de8"
  end

  on_linux do
    on_arm do
      url "https://github.com/synodlang/compiler/releases/download/v0.2.3/synod-v0.2.3-linux-arm64.tar.gz"
      sha256 "0967b860548dd92ca338f6e7747f71441e647768603caec95d9fb3436ac5157d"
    end
    on_intel do
      url "https://github.com/synodlang/compiler/releases/download/v0.2.3/synod-v0.2.3-linux-amd64.tar.gz"
      sha256 "1acf0f8c587d07e9921a3db5e5f327704533b1676ae669ac7e8273b206ef15bd"
    end
  end

  def install
    bin.install "synod"
  end

  test do
    assert_match "language", shell_output("#{bin}/synod version")
  end
end
