cask "iruka" do
  version "1.1.8.2"
  sha256 "6653c3333c2f207f54053db386e7deb19bfe4563be49b58df79dab4de16c9196"

  url "https://github.com/dorienh/iruka-releases/releases/download/v#{version}/Iruka-#{version}.dmg"
  name "Iruka"
  desc "File manager with an embedded terminal"
  homepage "https://iruka.sh/"

  livecheck do
    url "https://raw.githubusercontent.com/dorienh/iruka-releases/main/appcast.xml"
    strategy :sparkle
  end

  # Sparkle updates the app itself; without this brew would fight it.
  auto_updates true
  depends_on macos: :sonoma

  app "Iruka.app"

  zap trash: [
    "~/Library/Application Support/dorienherremans.com.Iruka",
    "~/Library/Caches/dorienherremans.com.Iruka",
    "~/Library/Containers/dorienherremans.com.Iruka.FinderSync",
    "~/Library/Preferences/dorienherremans.com.Iruka.plist",
  ]
end
