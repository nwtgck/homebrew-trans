TRANS_VERSION = "0.1.1"
APP_FILE_NAME = "trans_macOS_#{TRANS_VERSION}"

class Trans < Formula
  desc "CLI tool for Trans"
  url "https://github.com/nwtgck/trans-cli-go/releases/download/v#{TRANS_VERSION}/#{APP_FILE_NAME}"
  sha256 "297286d6b28f214ada5badc2f7293787243c781ecfbb5c738ee552a5248b1d0d"

  def install
    system("mv #{APP_FILE_NAME} trans")
    bin.install 'trans'
  end

  test do
    system "trans -h"
  end
end
