cask "iruka" do
  version "1.1.7.2"
  sha256 "b919440844f6ec7d60d873061f10140cf88693d83a8d14ab21213376e312f07f"

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
