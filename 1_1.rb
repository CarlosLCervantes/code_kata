#Implement an algorithm to determine if a string has all unique characters.

class String
	def unique_chars?
		unique = true
		chars = {}
		self.length.times do |i|
			char = self[i]
			chars[char] = (chars[char] || 0) + 1
			if chars[char] > 1
				unique = false
				break
			end
		end
		return unique
	end
end

puts "asd".unique_chars?
puts "asa".unique_chars?



