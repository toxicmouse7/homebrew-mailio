class MailIO < Formula
  desc "mailio is a cross platform C++ library for MIME format and SMTP, POP3 and IMAP protocols. It is based on standard C++ 17 and Boost library."
  url "https://github.com/karastojko/mailio.git",
      tag: "0.21.0",
      revision: "cc887a7808d9c55e07c8a7503c7ae2e2d7485120"
  license "BSD-2-Clause"
  head "https://github.com/karastojko/mailio.git"

  depends_on "cmake" => :build
  depends_on "boost"

  def install
    system "cmake", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

end
