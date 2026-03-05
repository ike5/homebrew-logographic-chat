# Template used by .github/workflows/release.yml
# Placeholders are replaced by CI during release — do not fill them in manually.
class LogographicChat < Formula
  desc "TUI chat client for Logographic Chat"
  homepage "https://github.com/ike5/logographic-chat"
  version "0.1.15"
  license "MIT"

  on_macos do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.15/logographic-chat-darwin-arm64.tar.gz"
    sha256 "3f1048eb80b054ac1dbd323a6d425c8431129c40868b7cd498feefb5b43a3a7a"
  end

  on_linux do
    url "https://github.com/ike5/logographic-chat/releases/download/v0.1.15/logographic-chat-linux-x86_64.tar.gz"
    sha256 "a2885303b5031379c969f1b8d41fa269ec838e586ebebd26d0ce77ee1b760c84"
  end

  def install
    bin.install "logographic-chat"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/logographic-chat --help")
  end
end
