#Implement a function void reverse(char* str) in C or C++ which reverses a null- terminated string.
def reverse str
	len = str.length - 1
	0.upto(len / 2) do |i|
		temp = str[i]
		str[i] = str[len - i]
		str[len - i] = temp
	end
	return str
end

puts reverse "abcd"