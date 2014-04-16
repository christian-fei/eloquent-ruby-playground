words = %w{these are just some words}
# don't do that
for i in 0..words.size
  puts words[i]
end

puts "==================="

# use the each method
words.each do |word|
  puts word
end


def index_for( words, word )
  words.find_index { |this_word| word == this_word }
end
puts index_for words, "just"

puts words.find_index "just"

