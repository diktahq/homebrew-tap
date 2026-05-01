# typed: false
# frozen_string_literal: true

class Edikt < Formula
  desc "Governance layer for agentic engineering"
  homepage "https://github.com/diktahq/edikt"
  url "https://github.com/diktahq/edikt/releases/download/v0.5.0/edikt-v0.5.0.tar.gz"
  sha256 "98fe40080d46928aa6e469f02b96e22ee2ca5b472dd995bc585957748a00d615"
  license "Elastic-2.0"
  version "0.5.0"

  def install
    bin.install "bin/edikt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edikt version")
  end
end
