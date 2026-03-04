# Template used by .github/workflows/release.yml
# Placeholders are replaced by CI during release — do not fill them in manually.
class LogographicChat < Formula
  desc "TUI chat client for Logographic Chat"
  homepage "https://github.com/ike5/logographic-chat"
  version "0.1.3"
  license "MIT"

  on_macos do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.3/logographic-chat-darwin-arm64.tar.gz"
    sha256 "39032c7cc9d9f07490fb5c82d86572f4f5e5f31a2a7aba5fb45f06313a70014e"
  end

  on_linux do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.3/logographic-chat-linux-x86_64.tar.gz"
    sha256 "799fa31d937a81c27def2ba700082c941e5dbc5e2ebca3db810a38df0129bcbe"
  end

  def install
    bin.install "logographic-chat"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/logographic-chat --help")
  end
end
