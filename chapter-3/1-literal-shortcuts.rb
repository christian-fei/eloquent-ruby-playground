# array of words
words = ['foo','bar']
puts words
# or 
words = %w{ foo bar }
puts words


# hash
book_info = {
  "foo" => "bar"
}
puts book_info
puts book_info["foo"]
book_info["foo"] << " added string"
puts book_info["foo"]

# hash with symbols

book_info = {
  foo: "bar"
}
puts book_info
puts book_info[:foo]
book_info[:foo] << " added string"
puts book_info[:foo]
