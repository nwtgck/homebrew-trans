TRANS_VERSION = "0.1.0"
APP_FILE_NAME = "trans_macOS_#{TRANS_VERSION}"

class Trans < Formula
  desc "CLI tool for Trans"
  url "https://github.com/nwtgck/trans-cli-go/releases/download/v#{TRANS_VERSION}/#{APP_FILE_NAME}"
  sha256 "d7a66ff79a4e82f2d044d8a27da6a9fd928f88b768b347c1caacce5ec96ddbe9"

  def install
    system("mv #{APP_FILE_NAME} trans")
    bin.install 'trans'
  end

  test do
    system "trans -h"
  end
end
