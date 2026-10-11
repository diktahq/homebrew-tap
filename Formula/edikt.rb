# typed: false
# frozen_string_literal: true

class Edikt < Formula
desc "Governance layer for agentic engineering"
homepage "https://github.com/diktahq/edikt"
license "Elastic-2.0"
version "0.9.1"

on_macos do
  on_arm do
    url "https://github.com/diktahq/edikt/releases/download/v0.9.1/edikt-v0.9.1-darwin-arm64.tar.gz"
    sha256 "51cc7c51a7321b56616a0596ca900c67545ddecac53a2924b6d1dea629f06fd0"
  end
  on_intel do
    url "https://github.com/diktahq/edikt/releases/download/v0.9.1/edikt-v0.9.1-darwin-amd64.tar.gz"
    sha256 "e0897d6a9ca984f004192eed6709ac4f44ed039cef61129fd4a07ee5b84c0d39"
  end
end

on_linux do
  on_arm do
    url "https://github.com/diktahq/edikt/releases/download/v0.9.1/edikt-v0.9.1-linux-arm64.tar.gz"
    sha256 "355520ad14be0ea5dac1709e9c89a032b66857a6828e18b64c92bddd530dbb5b"
  end
  on_intel do
    url "https://github.com/diktahq/edikt/releases/download/v0.9.1/edikt-v0.9.1-linux-amd64.tar.gz"
    sha256 "fcdbaa213618d994d6b0dab2e5d471db28a301fb7e90732f5eff35ed143a7a2f"
  end
end

def install
  bin.install "bin/edikt"
end

def caveats
  <<~EOS
    Homebrew installed the edikt LAUNCHER only. The payload — commands,
    agents, hooks and rule packs — is a separate download:

      edikt install v0.9.1
      edikt use v0.9.1

    Then run /edikt:init from Claude Code inside a project.

    The two halves upgrade independently:
      brew upgrade edikt   updates the launcher
      edikt upgrade        updates the payload

    Neither updates the other, so run both when moving versions.
  EOS
end

test do
  assert_match version.to_s, shell_output("#{bin}/edikt version")
end
end
