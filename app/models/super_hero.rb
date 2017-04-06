class SuperHero #need superhero class?
  attr_accessor :name, :power, :biography

  ALL = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:biography]
    ALL << self
  end

  def self.all
    self.class.all
  end

  def self.clear
    ALL.clear
  end

end
