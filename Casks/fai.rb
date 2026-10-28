cask "fai" do
  version "0.1.1"
  sha256 arm:   "215cd0fd892bc82b811e5bd754a07de8ae513046b3154775b47abc82b1cd5272",
         intel: "1bf33d41c2060a2d757a93cc5344f9fbfd96e2628a51da68dcbf77a2c15dccd0"

  on_arm do
    url "https://github.com/alialjaffer/fai/releases/download/v0.1.1/fai-#{version}-arm64-mac.zip"
  end
  on_intel do
    url "https://github.com/alialjaffer/fai/releases/download/v0.1.1/fai-#{version}-x64-mac.zip"
  end

  name "fai"
  desc "Self-hosted task tracker, Kanban, and notes"
  homepage "https://github.com/alialjaffer/fai"

  depends_on :macos

  app "fai.app"
end
