class Planet
  def initialization
    @name
    @description
    @population
  end

class solarsystem
  def initialization(name)
    @name = "Milky Way"
    @planets = ['Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Uranus', 'Neptune', 'Pluto']
    @planet_count = planets.count
  end

  def supernova()
    @planets = []
  end

end

