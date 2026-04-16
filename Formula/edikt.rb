# typed: false
# frozen_string_literal: true

class Edikt < Formula
  desc "Governance layer for agentic engineering"
  homepage "https://github.com/diktahq/edikt"
  url "https://github.com/diktahq/edikt/releases/download/v0.5.0/edikt-v0.5.0.tar.gz"
  sha256 "PLACEHOLDER"
  license "Elastic-2.0"
  version "0.5.0"

  def install
    bin.install "bin/edikt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edikt version")
  end
end
