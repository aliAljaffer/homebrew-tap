cask "fai" do
  version "0.3.0"
  sha256 arm:   "d4ae458a2e4e7f2c7723d6ddfae602448c46a9790bcb98821b2723c98f0da41d",
         intel: "c72286b567dbdcde7a1b420c56018b606c1e6f3068472ac3739d4fcf02e964b5"

  on_arm do
    url "https://github.com/alialjaffer/fai/releases/download/v0.3.0/fai-#{version}-arm64-mac.zip"
  end
  on_intel do
    url "https://github.com/alialjaffer/fai/releases/download/v0.3.0/fai-#{version}-x64-mac.zip"
  end

  name "fai"
  desc "Self-hosted task tracker, Kanban, and notes"
  homepage "https://github.com/alialjaffer/fai"

  depends_on :macos

  app "fai.app"
end
