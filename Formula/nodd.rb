class Nodd < Formula
  desc "Send notifications to your iPhone and wait for a human response"
  homepage "https://www.blipdrop.net/nodd/en/"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/blipdrop/nodd/releases/download/v#{version}/nodd-aarch64-apple-darwin.tar.gz"
      sha256 "bc3b42ce4ec12749f4a80f01ebd663edebe6b37d182cda91a895f476c05ed393"
    end
    on_intel do
      url "https://github.com/blipdrop/nodd/releases/download/v#{version}/nodd-x86_64-apple-darwin.tar.gz"
      sha256 "0d65c73fb6812a616c6985da6c97002f1c10b66fc25adde8289617bbc1b0902f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blipdrop/nodd/releases/download/v#{version}/nodd-aarch64-unknown-linux-musl.tar.gz"
      sha256 "57706b8613e1badd962b8d042e8bcacb96a0f1cf1b95ffb3b32e8364e3372d13"
    end
    on_intel do
      url "https://github.com/blipdrop/nodd/releases/download/v#{version}/nodd-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e2114d5d1f8b1fffbb7e38b96e0ea29d2fe0ac08cf48a9fb485ad18d3f842326"
    end
  end

  def install
    bin.install "nodd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nodd --version")
  end
end
