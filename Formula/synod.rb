class Synod < Formula
  desc "Compiler for the Synod language"
  homepage "https://github.com/synodlang/compiler"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/synodlang/compiler/releases/download/v0.1.0/synod-v0.1.0-darwin-universal.tar.gz"
    sha256 "48342fe100818959f1a638c594354c4f529701b9c540d87b7e6b93e9f05927e6"
  end

  on_linux do
    on_arm do
      url "https://github.com/synodlang/compiler/releases/download/v0.1.0/synod-v0.1.0-linux-arm64.tar.gz"
      sha256 "b5600a32c541869fb7178b82ffea85155cb862740cf778f9b8640862d677d8dc"
    end
    on_intel do
      url "https://github.com/synodlang/compiler/releases/download/v0.1.0/synod-v0.1.0-linux-amd64.tar.gz"
      sha256 "1dab649d10d5246eca5284419d53b621557a1d32faa5e4f1b2fb02c2fb1fcd7f"
    end
  end

  def install
    bin.install "synod"
  end

  test do
    assert_match "language", shell_output("#{bin}/synod version")
  end
end
