require 'yaml'
require 'file_data_store'
require 'console_ui'

class Intertextual
  
  def initialize
	#load settings from config file
	config = YAML.load_file('config.yml')
	storage_type = config['storage']
	ui_type = config['ui']
	
	#load data from storage - topics, snippets, tags, synonyms
	data_store = get_data(storage_type)
	
	#fire up UI
	ui = load_ui(ui_type)
	ui.data_store = data_store
	ui.run
  end
  
  def get_data(storage_type)
    case storage_type
	  when 'file'
	    data_store = FileDataStore.new
		data_store.load
		data_store
      else
	    #error
	  end
  end
  
  def load_ui(ui_type)
    case ui_type
	  when 'console'
	    ConsoleUI.new
      else
	    #error
	  end
  end
  
end