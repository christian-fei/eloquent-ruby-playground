name = 'christian'
name.each_char do |char|
  puts char
end

name.each_char { |char|
  puts char
}

name.each_byte {|byte|
  puts byte
}

puts name.public_methods.join(", ")
puts name.respond_to? 'public_methods'