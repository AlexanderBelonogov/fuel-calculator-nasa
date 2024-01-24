# Validator definition
class Validator
  ValidationError = Class.new(StandardError)
  LAUNCH = :launch
  LAND = :land

  def initialize(weight, route)
    @weight = weight
    @route = route
  end

  def valid?
    valid_weight?
    valid_route?
  end

  private

  def valid_weight?
    raise ValidationError, 'Weight should be greater than zero' if @weight <= 0
  end

  def valid_route?
    raise ValidationError, 'Route is empty' if @route.empty?
    raise ValidationError, 'First route should be Launch' if @route.first.first != LAUNCH
    raise ValidationError, 'First route should be Land' if @route.last.first != LAND
  end
end
