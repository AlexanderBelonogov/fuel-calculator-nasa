# Processor class definition
class Processor
  def initialize(weight, route)
    @weight = weight
    @route = route
  end

  def run
    total = 0
    @route.reverse.each do |(direction, gravity)|
      puts "Calculating #{direction} for #{gravity} gravity"
      total += fuel_calculation(@weight + total, direction, gravity)
    end
    total
  end

  private

  # Dynamically calls launch_fuel or land_fuel methods
  def fuel_calculation(mass, direction, gravity)
    send("#{direction}_fuel", mass, gravity)
  end

  def launch_fuel(mass, gravity)
    fuel_mass = (mass * gravity * 0.042 - 33).floor

    return 0 if fuel_mass <= 0

    fuel_mass + launch_fuel(fuel_mass, gravity)
  end

  def land_fuel(mass, gravity)
    fuel_mass = (mass * gravity * 0.033 - 42).floor

    return 0 if fuel_mass <= 0

    fuel_mass + land_fuel(fuel_mass, gravity)
  end
end
