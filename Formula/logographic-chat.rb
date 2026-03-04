# Template used by .github/workflows/release.yml
# Placeholders are replaced by CI during release — do not fill them in manually.
class LogographicChat < Formula
  desc "TUI chat client for Logographic Chat"
  homepage "https://github.com/ike5/logographic-chat"
  version "0.1.6"
  license "MIT"

  on_macos do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.6/logographic-chat-darwin-arm64.tar.gz"
    sha256 "a265e3b0ad2e657225615de7859c64c36961267f9a5d034cc780b25750bd702f"
  end

  on_linux do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.6/logographic-chat-linux-x86_64.tar.gz"
    sha256 "fb9b82c624a14d2a08a4d498637afee62922106f1c5366283f8d9b1abd06156e"
  end

  def install
    bin.install "logographic-chat"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/logographic-chat --help")
  end
end
