# Formula/logographic-chat.rb
class LogographicChat < Formula
  desc "TUI chat client for Logographic Chat"
  homepage "https://github.com/ike5/logographic-chat"
  version "0.1.20"
  license "MIT"

  on_macos do
    url "https://github.com/ike5/logographic-chat/releases/download/0.1.20/logographic-chat-darwin-arm64.tar.gz"
    sha256 "ac0433531a2a8013575c5da4320060dda490f4efcf1ca38236997a5912d6aaec"
  end

  on_linux do
    url "https://github.com/ike5/logographic-chat/releases/download/0.1.20/logographic-chat-linux-x86_64.tar.gz"
    sha256 "3f60d669ee47ae913dca940c29eddb579dfb1018c9037c15685c91eb16da769b"
  end

  def install
    bin.install "logographic-chat"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/logographic-chat --help")
  end
end
