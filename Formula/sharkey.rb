class Sharkey < Formula
  desc "A CLI tool to create, and re-create, an age identity keypair with threshold secret sharing."
  homepage "https://github.com/grempe/sharkey"

  # RELEASE : CHANGE ME
  # Shared version constant
  VERSION = "v0.0.5"

  # RELEASE : CHANGE ME
  # wget [file]
  # sha256sum [file]
  SHA256_DARWIN_X86 = "9a2c0637fe5265b1d70a828394cc0b0284069ed66653a9fff1a79a9efc9d6681"
  SHA256_LINUX_X86 = "d49cf3686e2aee37ec2df6afde4cfd9f2080489e269bbfba0ae6a3ebb4bdeb45"
  SHA256_DARWIN_ARM = "b318bfefb6961ba2148c98d3551a9bc710891eefa1a590aa1ed5fb8bc865fa64"

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
