cask "iruka" do
  version "1.1.6.0"
  sha256 "933a7de192702e7dd6d9651e1799183fd935f4cdf432e29da0fcfd9a3be553b6"

  url "https://github.com/dorienh/iruka-releases/releases/download/v#{version}/Iruka-#{version}.dmg"
  name "Iruka"
  desc "File manager with an embedded terminal"
  homepage "https://iruka.dorienherremans.com/"

  livecheck do
    url "https://raw.githubusercontent.com/dorienh/iruka-releases/main/appcast.xml"
    strategy :sparkle
  end

  # Sparkle updates the app itself; without this brew would fight it.
  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Iruka.app"

  zap trash: [
    "~/Library/Application Support/dorienherremans.com.Iruka",
    "~/Library/Caches/dorienherremans.com.Iruka",
    "~/Library/Preferences/dorienherremans.com.Iruka.plist",
  ]
end
