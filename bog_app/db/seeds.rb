
Creature.destroy_all
puts "destroyed everything"

Creature.create({name: "Yoda", description: "Little green man"})
Creature.create({name: "Luke", description: "Jedi"})
Creature.create({name: "Darth Vader", description: "Father of Luke"})

puts "created #{Creature.count}"
