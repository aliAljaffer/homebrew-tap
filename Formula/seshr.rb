class Seshr < Formula
  desc "List Claude Code and OpenCode sessions by directory and resume them"
  homepage "https://github.com/alialjaffer/seshr"
  url "https://github.com/aliAljaffer/seshR/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "45df293e35b1732b75c5fd83d371885d384a52fe3f083e3f3a85add255b646dd"
  license "MIT"
  head "https://github.com/alialjaffer/seshr.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[-X main.version=#{version}]
    system "go", "build", *std_go_args(ldflags:), "."
    bash_completion.install "completions/seshr.bash" => "seshr"
    zsh_completion.install "completions/_seshr"
  end

  test do
    assert_match "seshr version #{version}", shell_output("#{bin}/seshr --version")
  end
end
