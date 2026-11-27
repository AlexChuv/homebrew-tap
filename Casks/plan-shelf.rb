cask "plan-shelf" do
  version "0.1.6"
  sha256 "0a022ad0741d8b0db5cb5c86d7307fb0a1eda98452d0ada456f74941e08b8de5"

  url "https://github.com/AlexChuv/plan-shelf-releases/releases/download/v#{version}/Plan-Shelf-#{version}.zip"
  name "Plan Shelf"
  desc "Floating task list that keeps your plan next to your AI agents"
  homepage "https://github.com/AlexChuv/plan-shelf-releases"

  # The app updates itself, so `brew upgrade` leaves it alone.
  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Plan Shelf.app"

  zap trash: [
    "~/Library/Application Support/Plan Shelf",
    "~/Library/Preferences/dev.planshelf.PlanShelf.plist",
  ]
end
