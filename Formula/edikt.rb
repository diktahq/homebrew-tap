# typed: false
# frozen_string_literal: true

class Edikt < Formula
desc "Governance layer for agentic engineering"
homepage "https://github.com/diktahq/edikt"
license "Elastic-2.0"
version "0.6.0"

on_macos do
  on_arm do
    url "https://github.com/diktahq/edikt/releases/download/v0.6.0/edikt-v0.6.0-darwin-arm64.tar.gz"
    sha256 "1176d47794d6a4150d6d9c0e206838fc8a19445392104398ff4c22eb650a99b9"
  end
  on_intel do
    url "https://github.com/diktahq/edikt/releases/download/v0.6.0/edikt-v0.6.0-darwin-amd64.tar.gz"
    sha256 "49d33bb33fee57e1c81d7f1b155067c8bc06ab029230fe7c51b4598bb6cd465a"
  end
end

on_linux do
  on_arm do
    url "https://github.com/diktahq/edikt/releases/download/v0.6.0/edikt-v0.6.0-linux-arm64.tar.gz"
    sha256 "ead1224f20a6c25f1d98e28e15b8e96dd2a7523584912728507b9c88498f4ba8"
  end
  on_intel do
    url "https://github.com/diktahq/edikt/releases/download/v0.6.0/edikt-v0.6.0-linux-amd64.tar.gz"
    sha256 "0599c4a528c988751fbce8bbbeff220770222ccbbc5eaee32defc410864b26c1"
  end
end

def install
  bin.install "bin/edikt"
end

test do
  assert_match version.to_s, shell_output("#{bin}/edikt version")
end
end
