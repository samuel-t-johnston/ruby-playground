class Tag
  
  attr_accessor :name, :weight
  
  def initialize(name, weight = 1)
    #todo validate
	@name = name
	@weight = weight
  end
  
end