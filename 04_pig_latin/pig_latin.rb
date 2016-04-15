def translate string
	if string.include?(" ")
		list = []
		string = string.split(" ")
		string.each do |str|
			if str.start_with?('A','E','I','O','U')
				list << str.downcase + "ay".capitalize
			elsif str.start_with?('a','e','i','o','u')
				list << str + "ay"
			elsif  !(str.start_with?('a','e','i','o','u') && ['a','e','i','o','u'].include?(str[1])) && (str[0] == str[0].capitalize)
				!(['a','e','i','o','u'].include?(str[2])) ? list << str.downcase + str[0] + str[1] + str[2] + "ay".slice!(3..-1).capitalize : list << (str.downcase + (str[0] + str[1] + "ay")).slice!(2..-1).capitalize
			elsif !(str.start_with?('a','e','i','o','u')) && !(['a','e','i','o','u'].include?(str[1]))
				!(['a','e','i','o','u'].include?(str[2])) ? list << str + str[0] + str[1] + str[2] + "ay".slice!(3..-1) : list << (str + (str[0] + str[1] + "ay")).slice!(2..-1)
			else
				if str[0] == "Q" && str[1] == "u"
					list << str.downcase + str[0] + str[1] + "ay".slice!(2..-1).capitalize
				elsif str[0] == "q" && str[1] == "u"
					list << (str + (str[0] + str[1] + "ay")).slice!(2..-1)
				elsif str[1] == "q" && str[2] == "u"
					str[0] == str[0].capitalize ? list << str.downcase + str[0] + str[1] + str[2] + "ay".slice!(3..-1).capitalize : list << str + str[0] + str[1] + str[2] + "ay".slice!(3..-1)
				else
					str[0] == str[0].capitalize ? list << str.downcase + str[0] + "ay".slice(1..-1).capitalize : list << (str + (str[0] + "ay")).slice!(1..-1)
				end
			end
		end
		list.join(" ")
	else
		str = string
		if str.start_with?('a','e','i','o','u','A','E','I','O','U')
			str + "ay"
		elsif  !(str.start_with?('a','e','i','o','u','A','E','I','O','U')) && !(['a','e','i','o','u','q'].include?(str[1]))
			if !(['a','e','i','o','u'].include?(str[2]))
				str[0] == str[0].capitalize ? (str.downcase + (str[0] + str[1] + str[2] + "ay")).slice!(3..-1).capitalize : (str + str[0] + str[1] + str[2] + "ay").slice!(3..-1)
			elsif str[0] == str[0].capitalize
				(str.downcase + (str[0] + str[1] + "ay")).slice!(2..-1).capitalize
			else
				(str + str[0] + str[1] + "ay").slice!(2..-1)
			end
		else
			if str[0] == "Q" && str[1] == "u"
				(str.downcase + (str[0] + str[1] + "ay")).slice!(2..-1).capitalize
			elsif str[0] == "q" && str[1] == "u"
				(str + str[0] + str[1] + "ay").slice!(2..-1)
			elsif str[1] == "q" && str[2] == "u"
				str[0] == str[0].capitalize ? (str.downcase + (str[0] + str[1] + str[2] + "ay")).slice!(3..-1).capitalize : (str + str[0] + str[1] + str[2] + "ay").slice!(3..-1)
			else
				str[0] == str[0].capitalize ? (str.downcase + (str[0] + "ay")).slice(1..-1).capitalize : (str + str[0] + "ay").slice!(1..-1)
			end
		end
	end
end