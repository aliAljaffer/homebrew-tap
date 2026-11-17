class Seshr < Formula
  desc "List Claude Code and OpenCode sessions by directory and resume them"
  homepage "https://github.com/alialjaffer/seshr"
  url "https://github.com/aliAljaffer/seshR/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "043764e3c415d5cf4b3db523cf876cbd65f4fb8016c849efb44586eb53391324"
  license "MIT"
  head "https://github.com/alialjaffer/seshr.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[-X main.version=#{version}]
    system "go", "build", *std_go_args(ldflags:), "."
  end

  test do
    assert_match "seshr version #{version}", shell_output("#{bin}/seshr --version")
  end
end
