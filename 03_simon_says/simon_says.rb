def echo str
	str
end

def shout str
	str.upcase
end

def repeat (str, n = 2)
	string = " " + str
	str + string * (n-1)
end

def start_of_word (str, n)
	str.slice(0..(n-1))
end

def first_word str
	str.split(" ")[0]
end

def titleize str
	string = str.capitalize!.split(" ")
	little_words = ["and", "in", "on", "at", "of", "the", "over"]
	string.each {|n| (little_words.include?(n)) ? n : n.capitalize!}
	string.join(" ")
end