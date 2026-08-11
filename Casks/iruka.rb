cask "iruka" do
  version "1.1.7.0"
  sha256 "f68957031694546844cd0ec05b82f674447e88fc2e610b16724d5726e84a2f24"

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
  depends_on macos: ">= :sonoma"

  app "Iruka.app"

  zap trash: [
    "~/Library/Application Support/dorienherremans.com.Iruka",
    "~/Library/Caches/dorienherremans.com.Iruka",
    "~/Library/Preferences/dorienherremans.com.Iruka.plist",
  ]
end
