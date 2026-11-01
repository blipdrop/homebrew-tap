class Nodd < Formula
  desc "Send notifications to your iPhone and wait for a human response"
  homepage "https://www.blipdrop.net/nodd/en/"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/blipdrop/nodd/releases/download/v#{version}/nodd-aarch64-apple-darwin.tar.gz"
      sha256 "df1cd89ec2a7354833f781b3d0ab618d8b3e057f8880889ece9169c356a44777"
    end
    on_intel do
      url "https://github.com/blipdrop/nodd/releases/download/v#{version}/nodd-x86_64-apple-darwin.tar.gz"
      sha256 "f10f0d4dc378943ec586fc04f41e394bc9f676c357ecfb95716e3af9277827d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blipdrop/nodd/releases/download/v#{version}/nodd-aarch64-unknown-linux-musl.tar.gz"
      sha256 "567c783db01751d428862f663a8cd15ba919e66cbccb33da179696ceb8e94aaf"
    end
    on_intel do
      url "https://github.com/blipdrop/nodd/releases/download/v#{version}/nodd-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ad698277b9de5487a511bbbc378d328c6ba4c64205606be94d81c3b4bf4a1c6"
    end
  end

  def install
    bin.install "nodd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nodd --version")
  end
end
