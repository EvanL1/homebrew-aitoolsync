class Aisync < Formula
  desc "Sync AI agent configs across Claude Code, Codex, Gemini CLI, Cursor, Copilot, Windsurf, and Cline"
  homepage "https://github.com/EvanL1/aitoolsync"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/EvanL1/aitoolsync/releases/download/v#{version}/aisync-darwin-aarch64.tar.gz"
    else
      url "https://github.com/EvanL1/aitoolsync/releases/download/v#{version}/aisync-darwin-x86_64.tar.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/EvanL1/aitoolsync/releases/download/v#{version}/aisync-linux-aarch64.tar.gz"
    else
      url "https://github.com/EvanL1/aitoolsync/releases/download/v#{version}/aisync-linux-x86_64.tar.gz"
    end
  end

  def install
    bin.install "aisync"
  end

  test do
    system "#{bin}/aisync", "--version"
  end
end
