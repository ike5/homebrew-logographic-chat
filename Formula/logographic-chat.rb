# Template used by .github/workflows/release.yml
# Placeholders are replaced by CI during release — do not fill them in manually.
class LogographicChat < Formula
  desc "TUI chat client for Logographic Chat"
  homepage "https://github.com/ike5/logographic-chat"
  version "0.1.14"
  license "MIT"

  on_macos do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.14/logographic-chat-darwin-arm64.tar.gz"
    sha256 "ad455cdde9a485fef40524650f42f2ae1451ab618774248331e15d7cefb20637"
  end

  on_linux do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.14/logographic-chat-linux-x86_64.tar.gz"
    sha256 "ef457350df817d58e09f99c18de9a99137348cfff74680327dbc4d1557c0e86a"
  end

  def install
    bin.install "logographic-chat"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/logographic-chat --help")
  end
end
