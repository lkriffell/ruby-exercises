class Wizard
attr_reader :name, :bearded, :stamina
  def initialize(name, bearded = true, stamina = 3)
    @name = name
    @bearded = bearded
    @stamina = stamina
  end

  def bearded?
    return true if @bearded == true
    false
  end

  def incantation(power)
    "sudo #{power}"
  end

  def rested?
    return true if @stamina > 0
    false
  end

  def cast
    "MAGIC MISSILE"
    @stamina = stamina - 1
  end


end
