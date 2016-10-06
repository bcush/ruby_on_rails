require_relative("human")
require_relative("wizard")
require_relative("ninja")
require_relative("samurai")

sean = Wizard.new
brian = Ninja.new
loc = Samurai.new

puts "seans health #{sean.health}"
sean.fireball(brian)
puts "brians health #{brian.health}"
sean.heal
puts "seans health #{sean.health}"
brian.steal(sean)
puts "brians health #{brian.health}"
puts "seans health #{sean.health}"
loc.death_blow(brian)
puts "brians health #{brian.health}"
sean.attack(sean)
