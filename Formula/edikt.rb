# typed: false
# frozen_string_literal: true

class Edikt < Formula
desc "Governance layer for agentic engineering"
homepage "https://github.com/diktahq/edikt"
license "Elastic-2.0"
version "0.7.0"

on_macos do
  on_arm do
    url "https://github.com/diktahq/edikt/releases/download/v0.7.0/edikt-v0.7.0-darwin-arm64.tar.gz"
    sha256 "9f680cb8c36d2ab5ac5b29c5cc865a7743f2f127c9066aaec9872ee43ada8a25"
  end
  on_intel do
    url "https://github.com/diktahq/edikt/releases/download/v0.7.0/edikt-v0.7.0-darwin-amd64.tar.gz"
    sha256 "029f360cb306d10aa4a470c23a5481e252c5748e7c9c71be83411589a12aa9aa"
  end
end

on_linux do
  on_arm do
    url "https://github.com/diktahq/edikt/releases/download/v0.7.0/edikt-v0.7.0-linux-arm64.tar.gz"
    sha256 "2c3d5fe14bede60d3b9789854d63b288b8b4cdaeef98119d7c4c7d6f7ba0b9a9"
  end
  on_intel do
    url "https://github.com/diktahq/edikt/releases/download/v0.7.0/edikt-v0.7.0-linux-amd64.tar.gz"
    sha256 "9ea5483d49751632a5cda5516eddf9c0b30c874ed60242be6a2e16dc188c5926"
  end
end

def install
  bin.install "bin/edikt"
end

test do
  assert_match version.to_s, shell_output("#{bin}/edikt version")
end
end
