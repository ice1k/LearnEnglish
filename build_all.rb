(3..4).each do |month|
	(1..31).each do |day|
		file_name = "#{month}-#{day}"
		# noinspection RubyResolve
		if File.exist? file_name
			load "#{file_name}/words.rb", true
			print 'Words file for ', file_name, ' is loaded.', "\n"
		end
	end
end

print 'All files loaded.', "\n"

def quit
	exit 0
end

if $*[0] != '--no-eval'
	loop do
		begin
			p '=> ', (eval gets)
		rescue SyntaxError
			print 'syntax error', "\n"
		rescue NameError
			print 'name error', "\n"
		ensure
		end
	end
end
