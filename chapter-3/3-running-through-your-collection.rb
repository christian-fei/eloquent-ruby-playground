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


# hashes also support an each method
# though with a twist

movies = [{
    title: 'title1',
    genre: 'genre1'
  },{
    title: 'title2',
    genre: 'genre2'
  }]

puts "each do"
movies.each do |movie|
  puts movie
  movie.each do |key, value|
    puts "key #{key} value #{value}"
  end
end

puts "\neach block"

movies.each {
  |movie|
  movie.each {
    |key, value|
    puts "key #{key} value #{value}"
  }
}