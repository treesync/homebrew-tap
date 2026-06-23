# typed: false
# frozen_string_literal: true

# treesync Homebrew formula. Installs the prebuilt CLI binary from
# https://github.com/treesync/cli releases. See https://treesync.dev.
class Treesync < Formula
  desc "Sync your code folder across devices & agents — full-fidelity, E2E encrypted"
  homepage "https://treesync.dev"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/treesync/cli/releases/download/v0.1.1/treesync_0.1.1_darwin_arm64.tar.gz"
      sha256 "cbc3827b84a9ed2779b7983b403e3f89343939e75a2da60f983b2d229d06ce4a"
    end
    on_intel do
      url "https://github.com/treesync/cli/releases/download/v0.1.1/treesync_0.1.1_darwin_amd64.tar.gz"
      sha256 "c2dd5f28c81ba23c50a9094d856b781ae066d24c2853b3fc671363014362386c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/treesync/cli/releases/download/v0.1.1/treesync_0.1.1_linux_arm64.tar.gz"
      sha256 "0041674305398bc78275d98b1fe3446e53d5e231840bce8ffa50e3863687c7a5"
    end
    on_intel do
      url "https://github.com/treesync/cli/releases/download/v0.1.1/treesync_0.1.1_linux_amd64.tar.gz"
      sha256 "4bf04d1f59dfb36443d896f60f1dcbbdb023e1cd349978f8634131df7dfdd625"
    end
  end

  def install
    bin.install "treesync"
  end

  test do
    assert_match "treesync version", shell_output("#{bin}/treesync --version")
  end
end
