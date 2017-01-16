require 'tag'
class Snippet

  attr_accessor :title, :chunks, :tags

  def initialize(title)
    #todo validate title?
	@title = title
	@chunks = []
	@tags = []
  end
  
  def add_chunk(chunk = '')
	@chunks.push chunk.to_s
  end
  
  def add_tag(name, weight = 1)
    @tags.push Tag.new(name, weight)
  end
  
end