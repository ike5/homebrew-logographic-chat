# Template used by .github/workflows/release.yml
# Placeholders are replaced by CI during release — do not fill them in manually.
class LogographicChat < Formula
  desc "TUI chat client for Logographic Chat"
  homepage "https://github.com/ike5/logographic-chat"
  version "0.1.8"
  license "MIT"

  on_macos do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.8/logographic-chat-darwin-arm64.tar.gz"
    sha256 "d7dd8fb01f5cd5ce6a61d4aacb5c05645285cb12ab76a1cf94b97ba0a69fc3b6"
  end

  on_linux do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.8/logographic-chat-linux-x86_64.tar.gz"
    sha256 "393f45f866266d2ff369176b7413a54bc2470077e5a75f7bccd14b3e4f317284"
  end

  def install
    bin.install "logographic-chat"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/logographic-chat --help")
  end
end
