cask "plan-shelf" do
  version "0.1.5"
  sha256 "019482c1c230aba38c20eca123624c66dcc63da1f4c79af014174c3c14e0b004"

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
