class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		time = hours_minutes_seconds
		"#{"%02d" % time[:h]}:#{"%02d" % time[:m]}:#{"%02d" % time[:s]}"
	end

	private
		def hours_minutes_seconds
			seconds = @seconds
			time = Hash.new(0)
			if seconds >= 3600
				time[:h], seconds = seconds.divmod(3600)[0], seconds.divmod(3600)[1]
			end
			if seconds >= 60
				time[:m], seconds = seconds.divmod(60)[0], seconds.divmod(60)[1]
			end
			time[:s] = seconds
			return time
		end
end