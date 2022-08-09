letters = ['a', 'c', 'a', 'b', 'c', 'a']
  counts = Hash.new(0)
letters.each do |letter|
  counts[letter] += 1
end
p counts
