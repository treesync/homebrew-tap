# typed: false
# frozen_string_literal: true

# treesync Homebrew formula. Installs the prebuilt CLI binary from
# https://github.com/treesync/cli releases. See https://treesync.dev.
class Treesync < Formula
  desc "Sync your code folder across devices & agents — full-fidelity, E2E encrypted"
  homepage "https://treesync.dev"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/treesync/cli/releases/download/v0.1.0/treesync_0.1.0_darwin_arm64.tar.gz"
      sha256 "1db60652a04c0ab1422a2393ab5f184ff12feec351ce7f62d0086321bdcb5f9d"
    end
    on_intel do
      url "https://github.com/treesync/cli/releases/download/v0.1.0/treesync_0.1.0_darwin_amd64.tar.gz"
      sha256 "1fa475930b25b0f907bce1fd50a1a8e18ec083c3ab6c71d3a6ecce7d9987983f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/treesync/cli/releases/download/v0.1.0/treesync_0.1.0_linux_arm64.tar.gz"
      sha256 "7b973b349e9be4235211c828042df9b294204fa407e9e0b24d9145b06fc74b78"
    end
    on_intel do
      url "https://github.com/treesync/cli/releases/download/v0.1.0/treesync_0.1.0_linux_amd64.tar.gz"
      sha256 "cb8221cf1f456cd4d2c6e01ea7ab76783c3da9a2fee742668ff465b4fce08788"
    end
  end

  def install
    bin.install "treesync"
  end

  test do
    assert_match "treesync version", shell_output("#{bin}/treesync --version")
  end
end
