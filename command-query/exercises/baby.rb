class Baby
  attr_reader :tired
  def initialize(tired = true)
    @tired = tired
  end

  def nap
    @tired = false
  end

  def tired?
    if @tired == true
      "The baby is tired."
    elsif @tired = false
      "Naps help combat drowsiness."
    end
  end
end
