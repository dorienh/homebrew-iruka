cask "iruka" do
  version "1.2.0.2"
  sha256 "4e32d1c3fc8d2f8e1d1f6aab2689d9692debc3ddc182a7f382e7ab7ca88fffca"

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
    "~/Library/Application Support/Iruka",
    "~/Library/Application Support/dorienherremans.com.Iruka",
    "~/Library/Caches/dorienherremans.com.Iruka",
    "~/Library/Containers/dorienherremans.com.Iruka.FinderSync",
    "~/Library/Preferences/dorienherremans.com.Iruka.plist",
  ]
end
