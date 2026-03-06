# Formula/logographic-chat.rb
class LogographicChat < Formula
  desc "TUI chat client for Logographic Chat"
  homepage "https://github.com/ike5/logographic-chat"
  version "0.1.22"
  license "MIT"

  on_macos do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.22/logographic-chat-darwin-arm64.tar.gz"
    sha256 "e6d4ea3b25943f75518e3ca94d1cd8de6b11e9470aab6374ce95be0b023de88c"
  end

  on_linux do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.22/logographic-chat-linux-x86_64.tar.gz"
    sha256 "32d4edcdb5991fa4a5a82b7ccd42b5c693e5bf686908a295b2f86b1c7662da5f"
  end

  def install
    bin.install "logographic-chat"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/logographic-chat --help")
  end
end
