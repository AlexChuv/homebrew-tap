cask "plan-shelf" do
  version "0.1.7"
  sha256 "efd34c67b6a215208995e9f3260eadeb5e9b50ac91b1ec7f6d24863ca391c727"

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
