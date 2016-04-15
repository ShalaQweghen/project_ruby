class Timer
	attr_reader :seconds
	attr_writer :seconds

	def initialize 
		@seconds = 0
	end

	def seconds
		@seconds
	end

	def time_string
		@time = Time.mktime(0).to_s.slice(11..-7)
		if @seconds > 59
			@minutes = @seconds/60
			@seconds = @seconds%60
			@seconds > 9 ? @time[6..7] = @seconds.to_s : @time[7] = @seconds.to_s
			if @minutes > 59
				@hours = @minutes/60
				@minutes = @minutes%60
				@hours > 9 ? @time[0..1] = @hours.to_s : @time[1] = @hours.to_s
				@minutes > 9 ? @time[3..4] = @minutes.to_s : @time[4] = @minutes.to_s
			else
				@minutes > 9 ? @time[3..4] = @minutes.to_s : @time[4] = @minutes.to_s
			end
		elsif @seconds > 9
			@time[6..7] = @seconds.to_s
		else
			@time[7] = @seconds.to_s
		end
		@time
	end
end