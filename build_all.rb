(3..9).each do |month|
	(1..31).each do |day|
		file_name = format '%d-%02d', month, day
		words_file_name = "#{file_name}/words.rb"
		notes_file_name = "#{file_name}/notes.md"
		article_file_name = "#{file_name}/article.md"
		# noinspection RubyResolve
		if File.exist? words_file_name
			load words_file_name, true
			print 'Words file for ', file_name, ' is loaded.', "\n"
		end
		if File.exist? notes_file_name
			print 'Notes file for ', file_name, ' is detected.', "\n"
		end
		if File.exist? article_file_name
			print 'Article file for ', file_name, ' is detected.', "\n"
		end
	end
end

print 'All files loaded.', "\n"

def quit
	exit 0
end

cmd_param = $*[0]

if cmd_param != '--no-eval' && cmd_param != '-ne'
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
