class Book
	attr_reader :title
	attr_writer :title
	def title
		if @title.include?(" ")
			@title = @title.split(" ")
			@title.first.capitalize!
			@title.each {|n| !(["and", "or", "in", "at", "on", "over", "under", "by", "of", "the", "a", "an"].include?(n)) ? n.capitalize! : n}
			@title.join(" ")
		else
			@title = @title.capitalize
		end
	end
end