# Template used by .github/workflows/release.yml
# Placeholders are replaced by CI during release — do not fill them in manually.
class LogographicChat < Formula
  desc "TUI chat client for Logographic Chat"
  homepage "https://github.com/ike5/logographic-chat"
  version "0.1.10"
  license "MIT"

  on_macos do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.10/logographic-chat-darwin-arm64.tar.gz"
    sha256 "bc255bab9317ec926e1084f3550e88661d9fdffd01b9c7d6fd393ce559cff09d"
  end

  on_linux do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.10/logographic-chat-linux-x86_64.tar.gz"
    sha256 "925dcb9b10fb56b69215d5173da3e5009de46da477d644c9e9a06b2534cc4896"
  end

  def install
    bin.install "logographic-chat"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/logographic-chat --help")
  end
end
