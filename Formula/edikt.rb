# typed: false
# frozen_string_literal: true

class Edikt < Formula
desc "Governance layer for agentic engineering"
homepage "https://github.com/diktahq/edikt"
license "Elastic-2.0"
version "0.6.0-rc5"

on_macos do
  on_arm do
    url "https://github.com/diktahq/edikt/releases/download/v0.6.0-rc5/edikt-v0.6.0-rc5-darwin-arm64.tar.gz"
    sha256 "e9be5bd12ea2a219db6e0ae0e7cc7caa13bd9f98106392cbdb5495dbdb6f2009"
  end
  on_intel do
    url "https://github.com/diktahq/edikt/releases/download/v0.6.0-rc5/edikt-v0.6.0-rc5-darwin-amd64.tar.gz"
    sha256 "bde3d65cfa2afdbc518a8c149bdf8bc2d5a368065e4826d23fbd55cf7db060c3"
  end
end

on_linux do
  on_arm do
    url "https://github.com/diktahq/edikt/releases/download/v0.6.0-rc5/edikt-v0.6.0-rc5-linux-arm64.tar.gz"
    sha256 "9ae320ba0ad3fd1b8704ddc08138fe125f1aac16fd2f10df5943afb1ed1d8b42"
  end
  on_intel do
    url "https://github.com/diktahq/edikt/releases/download/v0.6.0-rc5/edikt-v0.6.0-rc5-linux-amd64.tar.gz"
    sha256 "2621855a2be55e5ee403238298ae033353d1c99d48f3064176126570536163e7"
  end
end

def install
  bin.install "bin/edikt"
end

test do
  assert_match version.to_s, shell_output("#{bin}/edikt version")
end
end
