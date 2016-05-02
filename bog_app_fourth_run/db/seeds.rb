Creature.destroy_all
puts "all previous seeds have been removed"

Creature.create({name: "Clam-Hands", description: "clams for hands"})
Creature.create({name: "Troll", description: "dwells under bridges"})
puts "new seeds have been plotted"
