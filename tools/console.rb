require_relative '../config/environment.rb'

require 'pry'
a1 = Artist.new("Doe", 8)
a2 = Artist.new("Picasso", 35)
a3 = Artist.new("Leonardo da Vinci", 40)

g1 = Gallery.new("The Met", "New York City, NY")
g2 = Gallery.new("Louvre Museum", "Paris, France")
g3 = Gallery.new("Doe's Greatest Works", "New Haven, CT")

p1 = Painting.new("Mona Lisa", 7800, a3, g2)
p2 = Painting.new("The Weeping Woman", 8000, a2, g1)
p3 = Painting.new("The DOE", 10000, a1, g3)
p4 = Painting.new("Funny Painting", 100000, a2, g1)


binding.pry

puts "Bob Ross rules."

