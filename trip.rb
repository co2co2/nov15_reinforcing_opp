

class Trip
  @@locations = []
#  @name=name

  def self.add_destinations(name)
    new_location = Location.new(name)
    @@locations << new_location

  end
#
  def self.display
    puts "Began trip."
      (@@locations.length-1).times do
      puts "travelled from #{@@locations[0].name} to #{@@locations[1].name} "
     @@locations.shift
    end
    puts "Ended trip."
  end
end

class Location
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

Trip.add_destinations('Toronto')
Trip.add_destinations('Ottawa')
Trip.add_destinations('Montreal')
Trip.add_destinations('Quebec City')
Trip.add_destinations('Halifax')

Trip.display
