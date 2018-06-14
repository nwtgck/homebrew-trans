TRANS_VERSION = "0.3.0"
APP_FILE_NAME = "trans_macOS_#{TRANS_VERSION}"

class Trans < Formula
  desc "CLI tool for Trans"
  url "https://github.com/nwtgck/trans-cli-go/releases/download/v#{TRANS_VERSION}/#{APP_FILE_NAME}"
  sha256 "0953db65cf724905ddb38e7e4138f1cfbe16e9c00f78224d746ff0c4080ed268"

  def install
    system("mv #{APP_FILE_NAME} trans")
    bin.install 'trans'
  end

  test do
    system "trans -h"
  end
end
