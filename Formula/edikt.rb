# typed: false
# frozen_string_literal: true

class Edikt < Formula
desc "Governance layer for agentic engineering"
homepage "https://github.com/diktahq/edikt"
license "Elastic-2.0"
version "0.6.0-rc6"

on_macos do
  on_arm do
    url "https://github.com/diktahq/edikt/releases/download/v0.6.0-rc6/edikt-v0.6.0-rc6-darwin-arm64.tar.gz"
    sha256 "aafb290d7b16676867a135368f5f80caaf05208c7a7c8763e23fed1b428f128e"
  end
  on_intel do
    url "https://github.com/diktahq/edikt/releases/download/v0.6.0-rc6/edikt-v0.6.0-rc6-darwin-amd64.tar.gz"
    sha256 "e7bccbbf708f84ecc44b63a844b9d978766c82200e69444d698d20ddb7356bb9"
  end
end

on_linux do
  on_arm do
    url "https://github.com/diktahq/edikt/releases/download/v0.6.0-rc6/edikt-v0.6.0-rc6-linux-arm64.tar.gz"
    sha256 "85a1934ac4ce1e9f8efb1d3dfbd2620c7b7cff2ea86a6489632723b832e1e06d"
  end
  on_intel do
    url "https://github.com/diktahq/edikt/releases/download/v0.6.0-rc6/edikt-v0.6.0-rc6-linux-amd64.tar.gz"
    sha256 "4713cb54448c9f5423f5d0d1b57ca51da8efd1e14c7616d7b340c84972067bba"
  end
end

def install
  bin.install "bin/edikt"
end

test do
  assert_match version.to_s, shell_output("#{bin}/edikt version")
end
end
