# Formula/logographic-chat.rb
class LogographicChat < Formula
  desc "TUI chat client for Logographic Chat"
  homepage "https://github.com/ike5/logographic-chat"
  version "0.1.26"
  license "MIT"

  on_macos do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.26/logographic-chat-darwin-arm64.tar.gz"
    sha256 "a0e67c7f74fa034202d20605f97a5563f2eafc3e18a50ae19d0082d49a6f86e3"
  end

  on_linux do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.26/logographic-chat-linux-x86_64.tar.gz"
    sha256 "8f3d8b1e85e54d0d93829382d19b58a88ebf44b4902214d0acb7051cc77baead"
  end

  def install
    bin.install "logographic-chat"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/logographic-chat --help")
  end
end
