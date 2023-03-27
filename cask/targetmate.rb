cask "targetmate" do
  version "0.4.0"
  sha256 "2ac718be4fe1a5c6f79eba5102072ebb4fddd1fafb7ce15af0e6018a0433b610"

  url "https://github.com/BirjuVachhani/target_mate/releases/download/#{version}/TargetMate-macos-#{version}.dmg",
      verified: "github.com/BirjuVachhani/target_mate/"
  name "Target Mate"
  desc "A companion app for Toggl track to track & manage your working hours to achieve your monthly goals."
  homepage "https://github.com/BirjuVachhani/target_mate"

  livecheck do
    url "https://rectangleapp.com/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates false
  depends_on macos: ">= :sierra"

  app "Target Mate.app"

  uninstall quit: "dev.birju.targetmate"

  zap trash: [
    "~/Library/Application Scripts/dev.birju.targetmate",
    "~/Library/Application Support/Target Mate",
    "~/Library/Caches/dev.birju.targetmate",
    "~/Library/HTTPStorages/dev.birju.targetmate",
    "~/Library/Containers/Target Mate",
    "~/Library/Preferences/dev.birju.targetmate",
  ]
end
