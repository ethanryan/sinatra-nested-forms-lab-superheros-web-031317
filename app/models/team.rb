class Team
  attr_accessor :name, :motto

  ALL = []

  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    ALL << self
  end

  def self.all
    self.class.all
  end

  def self.clear
    ALL.clear
  end

end
