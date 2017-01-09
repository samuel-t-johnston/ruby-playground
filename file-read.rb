line_num = 0
File.open('object_4202676.txt')
    .each_line do |line|
	  puts "#{line_num += 1} #{line}"
	end