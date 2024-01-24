# CalculatorFacade class definition
class CalculatorFacade
  MESSAGE = 'Total fuel weight required for the trip: %s kg'

  def self.run(weight, route)
    Validator.new(weight, route).valid?
    total = Processor.new(weight, route).run
    puts MESSAGE % total
  rescue Validator::ValidationError => e
    puts e.message
  end
end
