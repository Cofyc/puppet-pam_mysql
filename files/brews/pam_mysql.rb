require 'formula'

class PamMysql < Formula
  url 'http://prdownloads.sourceforge.net/pam-mysql/pam_mysql-0.7RC1.tar.gz'
  homepage 'http://pam-mysql.sourceforge.net'
  sha1 'a139c4b4bf1a2e591a016069405428eb862f7690'
  version '0.7-rc1-boxen1'

  depends_on 'autoconf'
  depends_on 'automake'

  def install
    args = []
    args << "--with-mysql=#{HOMEBREW_PREFIX}"

    system "./configure", *args
    system "make"
    system "sudo make install"
  end
end
