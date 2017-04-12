(3..4).each do |month|
	(1..31).each do |day|
		file_name = "#{month}-#{day}"
		# noinspection RubyResolve
		if File.exist? file_name
			load "#{file_name}/words.rb"
			print 'Words file for ', file_name, ' is loaded.', "\n"
		end
	end
end

print 'All files loaded.', "\n"
