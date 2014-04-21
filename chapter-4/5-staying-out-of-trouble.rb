string = "this is a not so simple string"

puts string[3..15]

string.reverse.each_char {|char|
  print char
}
puts
string.each_char {|char|
  print char
}
puts