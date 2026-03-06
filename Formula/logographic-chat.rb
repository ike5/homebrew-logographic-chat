# Formula/logographic-chat.rb
class LogographicChat < Formula
  desc "TUI chat client for Logographic Chat"
  homepage "https://github.com/ike5/logographic-chat"
  version "0.1.24"
  license "MIT"

  on_macos do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.24/logographic-chat-darwin-arm64.tar.gz"
    sha256 "8e67bda916f7ad3ae53850915d471ca3b5123aef1399fd8c0e24774734068836"
  end

  on_linux do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.24/logographic-chat-linux-x86_64.tar.gz"
    sha256 "d48bdbd9a1a6a5933ef43c13e764f4a16aefe7394871a43bb3aaf799e08c4f17"
  end

  def install
    bin.install "logographic-chat"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/logographic-chat --help")
  end
end
