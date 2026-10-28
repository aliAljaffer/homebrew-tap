cask "fai" do
  version "0.1.0"
  sha256 arm:   "27bcef3149edc057e5c44e8af29a8c835100e20fc935ef752717ee032aa1e80d",
         intel: "ec62a854ceb81b632422127f4dda97267c3412ba8d71988e00188bd3e7f828e9"

  on_arm do
    url "https://github.com/alialjaffer/fai/releases/download/v0.1.0/fai-#{version}-arm64-mac.zip"
  end
  on_intel do
    url "https://github.com/alialjaffer/fai/releases/download/v0.1.0/fai-#{version}-x64-mac.zip"
  end

  name "fai"
  desc "Self-hosted task tracker, Kanban, and notes"
  homepage "https://github.com/alialjaffer/fai"

  depends_on :macos

  app "fai.app"
end
