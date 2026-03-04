# Template used by .github/workflows/release.yml
# Placeholders are replaced by CI during release — do not fill them in manually.
class LogographicChat < Formula
  desc "TUI chat client for Logographic Chat"
  homepage "https://github.com/ike5/logographic-chat"
  version "0.1.13"
  license "MIT"

  on_macos do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.13/logographic-chat-darwin-arm64.tar.gz"
    sha256 "e7c8c559823bc672d6d84c3d1cf0ee0cccacd8ae14bd2ecc15e68a50eeb77e98"
  end

  on_linux do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.13/logographic-chat-linux-x86_64.tar.gz"
    sha256 "d6f0141bfb1e1d9f23918850a693c71d224f42d7ce6774d0b808ff696515b861"
  end

  def install
    bin.install "logographic-chat"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/logographic-chat --help")
  end
end
