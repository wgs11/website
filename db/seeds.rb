Donation.delete_all
User.delete_all
Game.delete_all

Incentives = [
    [0, 301, "Super Mario 602", "smslogo.png"],
    [97.85, 250, "Paper Mario TTYD 100%", "smslogo.png"],
    [0, 200, "SM64 700 Star Run", "smslogo.png"],
    [6, 150, "Wind Waker Any%", "smslogo.png"],
    [0.1, 150, "Paper Mario 64 100%", "smslogo.png"],
    [120, 120, "24 Hour Stream", "smslogo.png"],
    [1, 100, "SMS 420", "smslogo.png"],
    [0, 100, "SMS All Categories", "smslogo.png"],
    [0, 100, "LoZ: Ocarina of Time Any% Glitchless", "smslogo.png"],
    [0, 100, "LoZ: Majora's Mask Any% Glitchless", "smslogo.png"],
    [0, 100, "LoZ: Majora's Mask All Masks", "smslogo.png"],
    [100, 100, "Super Mario Galaxy 2 242", "smslogo.png"],
    [75, 75, "Drunk Stream", "smslogo.png"],
    [48, 75, "Super Mario 64 Chaos 70 Star", "smslogo.png"],
    [0, 65, "Paper Mario TTYD Any%", "smslogo.png"],
    [65, 65, "Shovel Knight Any%", "smslogo.png"],
    [0, 45, "Paper Mario 64 Glitchless", "smslogo.png"],
    [16, 30, "Pikmin All Parts", "smslogo.png"],
    [0, 30, "Pikmin 2 Pay off Debt", "smslogo.png"],
    [30, 30, "Pikmin 2 All Treasures", "smslogo.png"],
    [0.21, 25, "Pokemon Red/Blue Glitchless", "smslogo.png"],
    [25, 25, "Perler Giveaway", "smslogo.png"],
    [3, 35, "Spyro Year of the Dragon 117%", "smslogo.png"],
    [30, 30, "Super Meat Boy Any%", "smslogo.png"],
    [30, 30, "Chubby Bunny", "smslogo.png"],
    [0, 100, "Paper Mario TTYD 'I Love Yous'", "smslogo.png"]
]

Incentives.each do |progress, total, incentive, image_url|
  Donation.create(progress: progress, total: total, incentive: incentive, image_url: image_url)
end


