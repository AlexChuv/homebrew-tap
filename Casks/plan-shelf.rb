cask "plan-shelf" do
  version "0.1.4"
  sha256 "fdafb575b2914ebe9a85da3cca144314192db43f2850fd842dc968b274042f64"

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
