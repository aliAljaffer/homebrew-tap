cask "fai" do
  version "0.2.0"
  sha256 arm:   "4a246f7a202da3e3c48e06766c7596e7bf90c7457328c3db3da5e8da3a91b8d9",
         intel: "f73c5bdc92be2f606ff940cafd2e5fcf4d1b97ee2548daec0f2c9ef561546254"

  on_arm do
    url "https://github.com/alialjaffer/fai/releases/download/v0.2.0/fai-#{version}-arm64-mac.zip"
  end
  on_intel do
    url "https://github.com/alialjaffer/fai/releases/download/v0.2.0/fai-#{version}-x64-mac.zip"
  end

  name "fai"
  desc "Self-hosted task tracker, Kanban, and notes"
  homepage "https://github.com/alialjaffer/fai"

  depends_on :macos

  app "fai.app"
end
