class LeatherChair
  attr_reader :exposed
  def initialize(exposed = false)
    @exposed = exposed
  end

  def expose_to_sunlight
    @exposed = true
  end

  def faded?
    if @exposed == true
      "Exposed chairs are faded."
    elsif @exposed = false
      "New chairs are NOT faded."
    end
  end
end
