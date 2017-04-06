class Printer
	def println(str)
		print "#{str}\n"
	end
	def print(str)
		print str
	end
end

class System
	def self.out
		Printer.new
	end
end

System.out.println("");
System.out.print("");

