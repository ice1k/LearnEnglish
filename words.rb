class String
	def trim
		tr("\n", '')
				.tr(' ', '')
				.tr("'", '')
				.tr('-', '')
				.tr('sb.', '')
				.tr('sw.', '')
				.tr('sth.', '')
				.tr('.', '')
				.downcase
	end
end


## Base class
class Words
	attr_reader :map
	## add words
	def words(map)
		@map = map
	end

	## Executed
	def review
		@map.each_key do |k|
			full_str = k.to_s.split '_'
			################ 我跟你讲我就这个表情
			first_mark = true
			full_str.each do |part|
				print part
				if first_mark
					first_mark = false
				else
					print ' '
				end
			end
			gets
			print @map[k], "\n\n"
		end
	end

	def listen_write
		mistaken_words = Array.new
		len = @map.size
		print "Here's ", len, ' words today.', "\n"
		progress = 0
		@map.each_key do |k|
			progress += 1
			full_str = k.to_s
			trimmed_star = full_str.trim
			print @map[k], "\n"
			input = gets.to_s.trim
			if input.eql? trimmed_star
				print 'Correct!', "\n"
			else
				print 'Wrong!', "\n"
				print 'The correct one is: ', full_str, "\n"
				mistaken_words << full_str
			end
			print '[', progress, '/', len, ']', "\n"
		end
		print 'Mistaken words:', "\n"
		mistaken_words.each do |w|
			print w, "\n"
		end
		print 'Have a nice day. :)'
	end

	def refer(key)
		w = @map[key]
		if w.nil?
			return 'Unknown word:', key, "\n"
		else
			w
		end
	end
end

def review(w)
	w.review
end

def listen_write(w)
	w.listen_write
	input = gets
end

## it defines a getter
def def_getter(ret)
	define_method :get_today do
		ret
	end
end
