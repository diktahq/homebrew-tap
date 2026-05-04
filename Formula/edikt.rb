# typed: false
# frozen_string_literal: true

class Edikt < Formula
  desc "Governance layer for agentic engineering"
  homepage "https://github.com/diktahq/edikt"
  license "Elastic-2.0"
  url "https://github.com/diktahq/edikt.git", branch: "main"
  version "0.0.0"

  # v0.5.x retracted (2026-05-04). Awaiting v0.6.0 for the next Homebrew release.
  # Until then, install via curl: see https://github.com/diktahq/edikt#install
  disable! date: "2026-05-04",
           because: "v0.5.x retracted; awaiting v0.6.0. Install via curl: https://github.com/diktahq/edikt#install"

  def install
    # no-op: formula disabled
  end
end
