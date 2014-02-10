#Given two strings, write a method to decide if one is a permutation of the other.
def combinations items
	items.each_with_index do |item, i|
		puts combo_recursive items, i
	end
end

def combo_recursive items, depth, combo = ""
	return if depth >= items.length
	depth.upto(items.length - 1) do |i|
		combo = combo + items[i]
		combo_recursive items, depth + 1, combo
	end
	return combo
end

names = ["ryan", "andrew", "sam", "tara"]
combinations names
