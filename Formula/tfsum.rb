class Tfsum < Formula
  desc "Detailed, color-coded, risk-aware alternative to `terraform plan`"
  homepage "https://github.com/Fanatic-zer0/tfsum"
  version "0.0.0"
  license "MIT"

  # Placeholder formula. This file is overwritten automatically by the
  # tfsum release workflow's homebrew-tap job on every tagged release.

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fanatic-zer0/tfsum/releases/download/v0.0.0/tfsum_v0.0.0_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/Fanatic-zer0/tfsum/releases/download/v0.0.0/tfsum_v0.0.0_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fanatic-zer0/tfsum/releases/download/v0.0.0/tfsum_v0.0.0_linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/Fanatic-zer0/tfsum/releases/download/v0.0.0/tfsum_v0.0.0_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "tfsum"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tfsum --version")
  end
end
