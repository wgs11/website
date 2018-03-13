Hero.delete_all
# . . .
Characters = [
    ["Ana", "Ana.png", 39, 87],
    ["Bastion", "Bastion.png", 49, 86],
    ["DVA", "DVA.png", 46, 87],
    ["Genji", "Genji.png", 49, 86],
    ["Hanzo", "Hanzo.png", 45, 85],
    ["Roadhog", "Hog.png",  51, 87],
    ["Junkrat", "Junk.png", 48, 87],
    ["Lucio", "Lucio.png", 41, 86],
    ["McCree", "McCree.png", 40, 85],
    ["Mei", "Mei.png", 45, 89],
    ["Mercy", "Mercy.png", 46, 88],
    ["Pharah", "Pharah.png", 45, 85],
    ["Reaper", "Reaper.png", 69, 87],
    ["Reinhardt", "Rein.png", 41, 86],
    ["Soldier", "Soldier.png", 45, 85],
    ["Sombra", "Sombra.png", 42, 87],
    ["Symmetra", "Sym.png", 39, 86],
    ["Torbjorn", "Torb.png", 46, 87],
    ["Tracer", "Tracer.png", 42, 88],
    ["Widowmaker", "Widow.png", 52, 85],
    ["Winston", "Winston.png", 44, 83],
    ["Zarya", "Zarya.png", 54, 86],
    ["Zenyatta", "Zen.png", 45, 86]
]
Characters.each do |name, picture, unlocks, total|
  Hero.create(name: name, image_url: picture, unlocks: unlocks, total: total)
end



# . . .