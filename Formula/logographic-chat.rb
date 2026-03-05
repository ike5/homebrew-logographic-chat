# Template used by .github/workflows/release.yml
# Placeholders are replaced by CI during release — do not fill them in manually.
class LogographicChat < Formula
  desc "TUI chat client for Logographic Chat"
  homepage "https://github.com/ike5/logographic-chat"
  version "0.1.16"
  license "MIT"

  on_macos do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.16/logographic-chat-darwin-arm64.tar.gz"
    sha256 "200724450540a13ce3580dfa5b8ab16f44a9881157f902092ad8cd307cd40fc5"
  end

  on_linux do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.16/logographic-chat-linux-x86_64.tar.gz"
    sha256 "1289cfee08691e5a11762519f4fb217bec9080b149c5f42697872e32b1c78d66"
  end

  def install
    bin.install "logographic-chat"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/logographic-chat --help")
  end
end
