TRANS_VERSION = "0.2.0"
APP_FILE_NAME = "trans_macOS_#{TRANS_VERSION}"

class Trans < Formula
  desc "CLI tool for Trans"
  url "https://github.com/nwtgck/trans-cli-go/releases/download/v#{TRANS_VERSION}/#{APP_FILE_NAME}"
  sha256 "e4de41b7e116b586fecd2de25e7b721ba1cfca460f9c320872d31c69c8883e2f"

  def install
    system("mv #{APP_FILE_NAME} trans")
    bin.install 'trans'
  end

  test do
    system "trans -h"
  end
end
