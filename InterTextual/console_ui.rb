
class ConsoleUI
  attr_accessor :data_store
  
  def initialize
    @command_to_handler = {
	  #command matcher => handler function
	  
	  #topic <title>
	    #(doesn't exist)
		  #"Topic <title> doesn't exist. Create? Y/N"
		  #"Enter description"
		  #"Enter sub-topic names"
		#(exists)
		  #(display full info)
		  
	  #topic <title> rn
	    #"Enter new title for topic <title>"
		
	  #topic <title> d
	    #"Enter new description for topic <title>"
	  #topic <title> d+
	    #"Enter additional description to append to topic <title>"
	  
      #topic <title> sub
	    #"Enter replacement sub-topic names for topic <title>"
      #topic <title> sub+
	    #"Enter sub-topic names to add to topic <title>"
	  #topic <title> sub-
	    #"Enter sub-topic names to remove from topic <title>"
	  
	  #snip <title>
	    #(doesn't exist)
		  #"Snippet <title> doesn't exist. Create? Y/N"
		  #"Enter text chunk or '/' to end"
		  #"Enter tag or '/' to end"
		  #"Enter weight for <tagname> tag"
		#(exists)
		  #(display full info)
		  
	  #snip <title> rn
		#"Enter new title for snippet <title>"
		  
	  #snip <title> ch
		#"This will overwrite existing chunks."
		#"Enter text chunk or '/' to cancel"
		#"Enter text chunk or '/' to end"
	  #snip <title> ch+
		#"This will append new chunks to existing."
		#"Enter new text chunk or '/' to end."
		
	  #snip <title> tag
		#"This will overwrite existing tags."
		#"Enter tag or '/' to cancel"
		#"Enter weight for <tagname> tag"
	    #"Enter tag or '/' to end"
	    #"Enter weight for <tagname> tag"
	  
	  #tag <tagname> syn
	    #"This will overwrite existing synonyms."
		#"Enter synonyms for <tagname>"
	  #tag <tagname> syn+
	    #"This will add new synonyms to existing."
		#"Enter synonyms for <tagname>"
	}
  end
  
  def run
    #todo core input-output loop
  end
end