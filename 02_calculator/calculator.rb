def add (num1, num2)
	num1 + num2
end

def subtract (num1, num2)
	num1 - num2
end

def sum array
	array.inject(0) {|n, i| n += i}
end

def multiply (*nums)
	nums.inject(1) {|n, i| n *= i}
end

def power (num1, num2)
	num1 ** num2
end

def factorial num
	(num == 0) ? 1 : (1..num).to_a.inject(1) {|n, i| n *= i}
end