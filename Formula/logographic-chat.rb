# Formula/logographic-chat.rb
class LogographicChat < Formula
  desc "TUI chat client for Logographic Chat"
  homepage "https://github.com/ike5/logographic-chat"
  version "0.1.21"
  license "MIT"

  on_macos do
    url "https://github.com/ike5/logographic-chat/releases/download/vv0.1.21/logographic-chat-darwin-arm64.tar.gz"
    sha256 "7202ef09f8f99137a023bcf78e7169245d419c81a071d8bf51f1cdf11da9b3a4"
  end

  on_linux do
    url "https://github.com/ike5/logographic-chat/releases/download/vv0.1.21/logographic-chat-linux-x86_64.tar.gz"
    sha256 "1c94f20eec64747e99b06c3e9d82a51b01eb2b05abc64b1d875c512fbf16837c"
  end

  def install
    bin.install "logographic-chat"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/logographic-chat --help")
  end
end
