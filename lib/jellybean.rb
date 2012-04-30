class JellyBean < Dessert

  attr_accessor :flavor

  def initialize(name, calories, flavor)
    super(name, calories)
    @name = name
    @calories = calories
    @flavor = flavor
  end

  def delicious?
    if @flavor == "black licorice"
      false
    else
      true
    end
  end

end
