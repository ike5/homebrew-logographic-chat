# Formula/logographic-chat.rb
class LogographicChat < Formula
  desc "TUI chat client for Logographic Chat"
  homepage "https://github.com/ike5/logographic-chat"
  version "0.1.19"
  license "MIT"

  on_macos do
    url "https://github.com/ike5/logographic-chat/releases/download/vv0.1.19/logographic-chat-darwin-arm64.tar.gz"
    sha256 "c59339416c9d2eee1ca6d91a088f7b912d2d80702e0bcaece5a16e18645089f9"
  end

  on_linux do
    url "https://github.com/ike5/logographic-chat/releases/download/vv0.1.19/logographic-chat-linux-x86_64.tar.gz"
    sha256 "ee71b84cd69ac29264f32c0c99a31543237e30b57fa150661f0f8e5376cd1830"
  end

  def install
    bin.install "logographic-chat"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/logographic-chat --help")
  end
end
