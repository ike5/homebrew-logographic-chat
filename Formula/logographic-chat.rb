# Formula/logographic-chat.rb
class LogographicChat < Formula
  desc "TUI chat client for Logographic Chat"
  homepage "https://github.com/ike5/logographic-chat"
  version "0.1.25"
  license "MIT"

  on_macos do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.25/logographic-chat-darwin-arm64.tar.gz"
    sha256 "acfca3918e45cbb56d363c0594fb2a23e1c1016cbf4b6a76002d619232e001c3"
  end

  on_linux do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.25/logographic-chat-linux-x86_64.tar.gz"
    sha256 "5fa9a4063a28724b384a69c1f252e8ba2e695c691329bc6bddbc9b2a532f2cc2"
  end

  def install
    bin.install "logographic-chat"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/logographic-chat --help")
  end
end
