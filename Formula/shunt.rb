class Shunt < Formula
  desc "Ultra-lean, pluggable Rust gateway for HTTP APIs, AI, and MCP"
  homepage "https://github.com/shettyh/shunt"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/shettyh/shunt/releases/download/v#{version}/shunt-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "56e0ff3941fcff50a8d979cbc3fc53a5907429f484835ed25ebaee43544f737b"
    end

    on_intel do
      url "https://github.com/shettyh/shunt/releases/download/v#{version}/shunt-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a8c88fd7a1146287b4b2776753b9e196a0ab0f57fd14ee0bb8063a2d4c8d97a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shettyh/shunt/releases/download/v#{version}/shunt-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a77929a64b58865475c9511687fc1dc143734b9dd985a00dda0a9cc62c8aeeb4"
    end

    on_intel do
      url "https://github.com/shettyh/shunt/releases/download/v#{version}/shunt-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6be4dc733fb1be1053d081a0018f00173110eb2822cf6b05c17552045aa0163"
    end
  end

  def install
    bin.install "shunt"
    pkgshare.install "examples"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shunt --version")
  end
end
