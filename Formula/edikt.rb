# typed: false
# frozen_string_literal: true

class Edikt < Formula
  desc "Governance layer for agentic engineering"
  homepage "https://github.com/diktahq/edikt"
  license "Elastic-2.0"
  version "0.5.1"

  on_macos do
    on_arm do
      url "https://github.com/diktahq/edikt/releases/download/v0.5.1/edikt-v0.5.1-darwin-arm64.tar.gz"
      sha256 "d70275ca837b96bdd7a02d47c297aef8e514bd03ded4252950c80fbf8128414f"
    end
    on_intel do
      url "https://github.com/diktahq/edikt/releases/download/v0.5.1/edikt-v0.5.1-darwin-amd64.tar.gz"
      sha256 "c13ac6adca4506b67eea8d1270b4870c9645ca7fe20504e3236d47fe291eea43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diktahq/edikt/releases/download/v0.5.1/edikt-v0.5.1-linux-arm64.tar.gz"
      sha256 "8842074cf3f744d0d91c418731d50001a0a83725f170af2628e58c5a1699dc6b"
    end
    on_intel do
      url "https://github.com/diktahq/edikt/releases/download/v0.5.1/edikt-v0.5.1-linux-amd64.tar.gz"
      sha256 "08aa3d06cddb0d5d2d5f2e258a142c2362ad753960c57bd13de2a174ab046de1"
    end
  end

  def install
    bin.install "bin/edikt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edikt version")
  end
end
