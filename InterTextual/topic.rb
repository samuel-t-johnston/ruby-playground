class Topic
  
  attr_accessor :title, :description, :sub_topics
  
  def initialize(title, description = '')
    #todo validate title non-empty
	#ex:
	#unless sentence.respond_to? :include?
    #raise ArgumentError,
    #  "cannot wipe mutterings from a #{ sentence.class }"
	@title = title
	@description = description
	@sub_topics = []
  end
  
  def add_subtopic(topic)
    #todo validate
	@sub_topics.push topic
  end
  
end