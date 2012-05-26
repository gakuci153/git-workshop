require_relative 'gmt_offset_finder'

class SingaporeRelativeClock
	
	def timeDifferenceTo(city)
		@finder = GMTOffsetFinder.new
		@finder.offsetFor(city)
	end

end