class Creature < ActiveRecord::Base
  validates :name, :description, presence: true
end

creature = Creature.new
creature.valid?
creature.errors.messages

creature = Creature.new(name: "Luke Skywalker", description: "Jedi")
creature.valid?
creature.errors.messages
