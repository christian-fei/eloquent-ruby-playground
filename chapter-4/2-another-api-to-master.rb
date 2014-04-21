orig_words = "   this is just a test to test something \n "
words = orig_words

puts words
puts words.lstrip
puts words.rstrip
puts words = words.strip


until words.chop!.empty?
  puts words
end

words = orig_words
puts words.upcase

puts words.sub('something', 'cool')

puts words.sub('test', 'TEST')
puts words.gsub('test', 'TEST')


arr = words.split
puts arr


puts words.index('test')