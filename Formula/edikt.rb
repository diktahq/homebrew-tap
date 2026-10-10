# typed: false
# frozen_string_literal: true

class Edikt < Formula
desc "Governance layer for agentic engineering"
homepage "https://github.com/diktahq/edikt"
license "Elastic-2.0"
version "0.9.0"

on_macos do
  on_arm do
    url "https://github.com/diktahq/edikt/releases/download/v0.9.0/edikt-v0.9.0-darwin-arm64.tar.gz"
    sha256 "efcf973f672e39da0fce20f6da512041bb30903d4ac36818da559eb5f5df9dec"
  end
  on_intel do
    url "https://github.com/diktahq/edikt/releases/download/v0.9.0/edikt-v0.9.0-darwin-amd64.tar.gz"
    sha256 "481cd8545d73a0a88a1e9a1c4361d2041804dd347d6864018edf26631cc3bbe3"
  end
end

on_linux do
  on_arm do
    url "https://github.com/diktahq/edikt/releases/download/v0.9.0/edikt-v0.9.0-linux-arm64.tar.gz"
    sha256 "ff3ccaf121409fb82e20310a39d690284170c7949a1dd527ade9c2d81026ee59"
  end
  on_intel do
    url "https://github.com/diktahq/edikt/releases/download/v0.9.0/edikt-v0.9.0-linux-amd64.tar.gz"
    sha256 "fdd1175b921ce05107e6ff44f55f57bebb54a76b3624dd380429e567131323ac"
  end
end

def install
  bin.install "bin/edikt"
end

def caveats
  <<~EOS
    Homebrew installed the edikt LAUNCHER only. The payload — commands,
    agents, hooks and rule packs — is a separate download:

      edikt install v0.9.0
      edikt use v0.9.0

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
