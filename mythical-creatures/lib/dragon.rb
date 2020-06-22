class Dragon
  attr_reader :name, :color, :rider, :hunger
  def initialize(name, color, rider, hunger = 3)
    @name = name
    @color =  color
    @rider = rider
    @hunger = hunger
  end

  def hungry?
    return true if @hunger > 0
    false
  end

  def eat
    @hunger = hunger - 1
  end
end
