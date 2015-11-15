require_relative 'state_data'

# require_relative links to a file being used via a relative path, which means the file is located in the working directory. Require is mostly used for external libraries, wheres require_relative is used to link to a library located in the working directory.

class VirusPredictor

  # Creates an object of class VirusPredictor, and helps initialize that instance and gather information
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  # Predicts effects of virus based on methods predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end


  private
  # Predicts deaths based on population density and population of state. The greater the population density, the greater the ratio of the population that will die.
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when 0..49
      number_of_deaths = (@population * 0.05).floor
    when 50..99
      number_of_deaths = (@population * 0.1).floor
    when 100..149
      number_of_deaths = (@population * 0.2).floor
    when 150..199
      number_of_deaths = (@population * 0.3).floor
    else
     number_of_deaths = (@population * 0.4).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Predicts the spead of spread based on the population density of the state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    case @population_density
    when 0..49 then speed = 2.5
    when 50..99 then speed = 2
    when 100..149 then speed = 1.5
    when 150..199 then speed = 1
    else speed = 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

STATE_DATA.each do |state, data|
  report = VirusPredictor.new(state, data[:population_density], data[:population])
  report.virus_effects
end

#=======================================================================
# Reflection Section