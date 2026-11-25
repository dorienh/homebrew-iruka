cask "iruka" do
  version "1.2.1.2"
  sha256 "124ba75700564f7fcd2f6dd2f4cddf77eff935260a4dced081a904f1c787cd33"

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
  # The `iruka` command (open a folder, reveal a file) ships inside the app.
  binary "#{appdir}/Iruka.app/Contents/Resources/iruka"

  zap trash: [
    "~/Library/Application Support/Iruka",
    "~/Library/Application Support/dorienherremans.com.Iruka",
    "~/Library/Caches/dorienherremans.com.Iruka",
    "~/Library/Containers/dorienherremans.com.Iruka.FinderSync",
    "~/Library/Preferences/dorienherremans.com.Iruka.plist",
  ]
end
