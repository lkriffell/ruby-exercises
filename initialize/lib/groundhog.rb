class Groundhog
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def change_name(x)
    @name = x
  end
end
