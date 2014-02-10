#Write a method to replace all spaces in a string with'%20'. 
#You may assume that the string has sufficient space at the end of the string to hold the additional characters, and that you are given the "true" length of the string. 
#(Note: if imple- menting in Java, please use a character array so that you can perform this opera- tion in place.)
#EXAMPLE
#Input: "Mr John Smith Output: "Mr%20Dohn%20Smith"
#Use C-Style strings

def url_encode str
	original_length = str.length

	num_spaces = 0;
	0.upto(original_length) do |i|
		num_spaces = num_spaces + 1 if(str[i] == ' ')
	end

	new_length = original_length + (num_spaces * 2)
	str[new_length] = 'x'

	(original_length - 1).downto(0) do |i|
		if(str[i] == ' ')
			str[new_length - 3] = '%'
			str[new_length - 2] = '2'
			str[new_length - 1] = '0'
			new_length = new_length - 3
		else
			str[new_length - 1] = str[i]
			new_length = new_length - 1
		end
	end

	return str

end

string = ['M', 'r', ' ', 'J', 'o', 'h', 'n', ' ', 'S', 'm', 'i', 't', 'h']
p url_encode string