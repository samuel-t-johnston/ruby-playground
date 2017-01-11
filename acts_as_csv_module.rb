module ActsAsCsv
  def self.included(base) #invoked whenever the module is included into another
    base.extend ClassMethods
  end
  
  module ClassMethods
    def acts_as_csv
	  include InstanceMethods
	end
  end
  
  class CsvRow
    attr_accessor :headers, :row_contents
	def method_missing(method_id)
	  header_name = method_id.id2name
	  column_index = headers.index(header_name)
	  row_contents[column_index]
	end
  end
  
  module InstanceMethods
    def read
	  @csv_contents = []
	  @filename = self.class.to_s.downcase + '.txt'
	  file = File.new(filename)
	  @headers = file.gets.chomp.split(', ')
	  file.each do |row|
	    @csv_contents << row.chomp.split(', ')
	  end
	end
	
	def each(&block)
	  file = File.new(filename)
	  headers = file.gets.chomp.split(', ')
	  file.each do |row|
	    csv = CsvRow.new
		csv.headers = headers
		csv.row_contents = row.chomp.split(', ')
		yield csv
	  end
	end
	
	attr_accessor :headers, :csv_contents, :filename
	
	def initialize
	  read
	end
  end
end

class RubyCsv # no inheritance! You can mix it in
  include ActsAsCsv
  acts_as_csv
end

#m = RubyCsv.new
#puts m.headers.inspect
#puts m.csv_contents.inspect

csv = RubyCsv.new
csv.each {|row| puts row.header1} #should print 'row1val1 \n row2val1'