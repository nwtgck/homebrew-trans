TRANS_VERSION = "0.4.0"
APP_FILE_NAME = "trans_macOS_#{TRANS_VERSION}"

class Trans < Formula
  desc "CLI tool for Trans"
  url "https://github.com/nwtgck/trans-cli-go/releases/download/v#{TRANS_VERSION}/#{APP_FILE_NAME}"
  sha256 "80210a933f83c5e7679a60bd4a6fe385616303408d6f6d8c0da35a3ace8770e9"

  def install
    system("mv #{APP_FILE_NAME} trans")
    bin.install 'trans'
  end

  test do
    system "trans -h"
  end
end
