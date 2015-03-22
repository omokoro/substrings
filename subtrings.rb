def substrings(words, dictionary)
	frequency = Hash.new(0)

	words = words.downcase.split(/\W/)

	words.each do |word|
		dictionary.each do |entry|
			frequency[entry] += 1 if word.include?(entry)
		end
	end
	puts frequency
end

dictionary = ["below","down","go","going","horn","how","howdy",
		          "it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
