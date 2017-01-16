require 'topic'
require 'snippet'
require 'tag'

class FileDataStore

  attr_accessor :topics, :snippets, :tags, :synonyms
  
  def initialize
    @topics = {}
	@snippets = {}
	@tags = {}
	@synonyms = {}
  end
  
  def load
    #todo
  end
  
  def save
    #todo
  end
  
end