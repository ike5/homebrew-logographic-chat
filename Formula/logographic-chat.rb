# Template used by .github/workflows/release.yml
# Placeholders are replaced by CI during release — do not fill them in manually.
class LogographicChat < Formula
  desc "TUI chat client for Logographic Chat"
  homepage "https://github.com/ike5/logographic-chat"
  version "0.1.4"
  license "MIT"

  on_macos do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.4/logographic-chat-darwin-arm64.tar.gz"
    sha256 "d91a20981ff2db4c0c2f38d746209505ee50d3dc7a5908ccb0374c4793ba6113"
  end

  on_linux do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.4/logographic-chat-linux-x86_64.tar.gz"
    sha256 "7af52a9f8d17c356dd45525b865a028f8b40b65e656ad68207dcf4b4d5f8a9a4"
  end

  def install
    bin.install "logographic-chat"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/logographic-chat --help")
  end
end
