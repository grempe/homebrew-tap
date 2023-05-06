class Sharkey < Formula
  desc "A CLI tool to create, and re-create, an age identity keypair with threshold secret sharing."
  homepage "https://github.com/grempe/sharkey"

  # RELEASE : CHANGE ME
  # Shared version constant
  VERSION = "v0.0.1"

  # RELEASE : CHANGE ME
  # wget [file]
  # sha256sum [file]
  SHA256_DARWIN_X86 = "ff829405db9b182ae93220f8cf1314fb548997b8338cc697488c506c0c1546b2"
  SHA256_LINUX_X86 = "d006b4d5ca669ba1d9abda5599dc89a3943671c49f2796653f8f7364193eeb3e"
  SHA256_DARWIN_ARM = "d8e8ce46ad5b77a6349e24d7533560f9740309651f4f8f7f94beb4f0a76f8184"

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
