class Synod < Formula
  desc "Compiler for the Synod language"
  homepage "https://github.com/synodlang/compiler"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/synodlang/compiler/releases/download/v0.3.0/synod-v0.3.0-darwin-universal.tar.gz"
    sha256 "9943c89705f00b2ef7d9aa5d52dac22f5982a7361adc1c17e57e43ed2a9aa0e1"
  end

  on_linux do
    on_arm do
      url "https://github.com/synodlang/compiler/releases/download/v0.3.0/synod-v0.3.0-linux-arm64.tar.gz"
      sha256 "b5c534e22eced9f2bdde4b95d58aa1eb0f82a8cca1de6a44fab4d8508e2ba870"
    end
    on_intel do
      url "https://github.com/synodlang/compiler/releases/download/v0.3.0/synod-v0.3.0-linux-amd64.tar.gz"
      sha256 "5ca8feeba29a2034905e0f4cff11afac228bcefde7cb8c5460c094c4fea8acc5"
    end
  end

  def install
    bin.install "synod"
  end

  test do
    assert_match "language", shell_output("#{bin}/synod version")
  end
end
