cask "iruka" do
  version "1.1.8.0"
  sha256 "3440702ef1a1b8093c4496c1491a2cdfaca0effd092947c351614d2821724cbe"

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
