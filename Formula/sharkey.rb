class Sharkey < Formula
  desc "A CLI tool to create, and re-create, an age identity keypair with threshold secret sharing."
  homepage "https://github.com/grempe/sharkey"

  # RELEASE : CHANGE ME
  # Shared version constant
  VERSION = "v0.0.3"

  # RELEASE : CHANGE ME
  # wget [file]
  # sha256sum [file]
  SHA256_DARWIN_X86 = "87fb203ee76f41b3dac1b87cfee1543a44e9a46a1d8c012df9d5270558555d4c"
  SHA256_LINUX_X86 = "7a7d2ba4f99e955e56d38373f0f2cd1e64fc5cb2ec429379a82d582a2600a57b"
  SHA256_DARWIN_ARM = "ab919c23d53ff2fa68e619ef66c9bafccdfe99af3c78f837c4f85e8bad05f108"

  BASE_URL = "https://github.com/grempe/sharkey/releases/download"

  version VERSION

  if OS.mac?
    # Which flavor of macOS are we installing on?
    if RbConfig::CONFIG['host_cpu'].include? "x86_64"
      # INTEL
      url "#{BASE_URL}/#{VERSION}/sharkey-darwin-x86_64.tar.gz"
      sha256 SHA256_DARWIN_X86
    else
      # APPLE SILICON
      url "#{BASE_URL}/#{VERSION}/sharkey-darwin-aarch64.tar.gz"
      sha256 SHA256_DARWIN_ARM
    end
  elsif OS.linux?
      url "#{BASE_URL}/#{VERSION}/sharkey-linux-x86_64.tar.gz"
      sha256 SHA256_LINUX_X86
  end

  def install
    bin.install "sharkey"
  end

  test do
    system "#{bin}/sharkey", "-V"
  end
end
