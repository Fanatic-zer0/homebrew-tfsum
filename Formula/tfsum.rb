class Tfsum < Formula
  desc "Detailed, color-coded, risk-aware alternative to `terraform plan`"
  homepage "https://github.com/Fanatic-zer0/tfsum"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fanatic-zer0/tfsum/releases/download/v0.1.3/tfsum_v0.1.3_darwin_arm64.tar.gz"
      sha256 "70fe0fdc1399f6a278d02c1088a7c5e430abd3ce3e7ef73b0c7af9620178ffa3"
    else
      url "https://github.com/Fanatic-zer0/tfsum/releases/download/v0.1.3/tfsum_v0.1.3_darwin_amd64.tar.gz"
      sha256 "a86e12350e8b27db3553a775bc06a67cddb8f65bf8aca5bbf3925f6e4c492714"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fanatic-zer0/tfsum/releases/download/v0.1.3/tfsum_v0.1.3_linux_arm64.tar.gz"
      sha256 "684ae8b66bc721d61b2e2e764264118bae12647cc7e9d521ee994ba3ae7ae3ca"
    else
      url "https://github.com/Fanatic-zer0/tfsum/releases/download/v0.1.3/tfsum_v0.1.3_linux_amd64.tar.gz"
      sha256 "60bc31086687996bd396879726801a7f16c8f726ad14277ea8b8de414d4d8213"
    end
  end

  def install
    bin.install "tfsum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tfsum --version")
  end
end
