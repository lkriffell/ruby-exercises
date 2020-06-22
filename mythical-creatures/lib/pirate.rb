class Pirate
  attr_reader :name, :job, :curse, :booty
  def initialize(name, job = "Scallywag", curse = 0, booty = 0)
    @name = name
    @job = job
    @curse = curse
    @booty = booty
  end

  def cursed?
    return false if @curse < 3
    true
  end

  def commit_heinous_act
    @curse = curse + 1
  end

  def rob_ship
    @booty = booty + 100
  end
end
