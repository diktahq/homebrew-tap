# typed: false
# frozen_string_literal: true

class Edikt < Formula
  desc "Governance layer for agentic engineering"
  homepage "https://github.com/diktahq/edikt"
  license "Elastic-2.0"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/diktahq/edikt/releases/download/v0.8.0/edikt-v0.8.0-darwin-arm64.tar.gz"
      sha256 "22065e9e32f49d0906831056860e66400fc356b59ba64776764a2362a3377a51"
    end
    on_intel do
      url "https://github.com/diktahq/edikt/releases/download/v0.8.0/edikt-v0.8.0-darwin-amd64.tar.gz"
      sha256 "2b599cda8ad9e3dd3901efac09edc92cf65b957af270d362a832340a2a3c6257"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/diktahq/edikt/releases/download/v0.8.0/edikt-v0.8.0-linux-arm64.tar.gz"
      sha256 "672b958b035775172f95b8ce675d22fd5359d3441eb3473f44bcc9ee57d8d5ef"
    end
    on_intel do
      url "https://github.com/diktahq/edikt/releases/download/v0.8.0/edikt-v0.8.0-linux-amd64.tar.gz"
      sha256 "7579f01cc7f2b1792e69bed236995cfe8c2624744d83235790a7cecbf2cffe6a"
    end
  end

  def install
    bin.install "bin/edikt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edikt version")
  end
end
