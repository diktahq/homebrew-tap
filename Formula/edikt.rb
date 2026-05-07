# typed: false
# frozen_string_literal: true

class Edikt < Formula
desc "Governance layer for agentic engineering"
homepage "https://github.com/diktahq/edikt"
license "Elastic-2.0"
version "0.6.0-rc7"

on_macos do
  on_arm do
    url "https://github.com/diktahq/edikt/releases/download/v0.6.0-rc7/edikt-v0.6.0-rc7-darwin-arm64.tar.gz"
    sha256 "85c1af485e6718aff48e066be19108769d5cfd57165f29f8613526f66e81f08f"
  end
  on_intel do
    url "https://github.com/diktahq/edikt/releases/download/v0.6.0-rc7/edikt-v0.6.0-rc7-darwin-amd64.tar.gz"
    sha256 "6de742897f42e03a0eea5988134ba48b3229869d2665900e9d31ff05ae597836"
  end
end

on_linux do
  on_arm do
    url "https://github.com/diktahq/edikt/releases/download/v0.6.0-rc7/edikt-v0.6.0-rc7-linux-arm64.tar.gz"
    sha256 "e37c9198184bd2d7b5cb268395a970cad7d0d568b9286d9efc9713037dabff89"
  end
  on_intel do
    url "https://github.com/diktahq/edikt/releases/download/v0.6.0-rc7/edikt-v0.6.0-rc7-linux-amd64.tar.gz"
    sha256 "7c043f63279d55f1e415b5bbb76d0dd89d523c0033ca4f703f9716349981fb45"
  end
end

def install
  bin.install "bin/edikt"
end

test do
  assert_match version.to_s, shell_output("#{bin}/edikt version")
end
end
