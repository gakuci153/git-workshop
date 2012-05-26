require_relative 'gmt_offset_finder'

class SingaporeRelativeClock
	
	def timeDifferenceTo(city)
		@finder = GMTOffsetFinder.new
		
		@SST = 8.0
		
		@utcOffset = @finder.offsetFor(city)
		
		@SST - @utcOffset
	end

end