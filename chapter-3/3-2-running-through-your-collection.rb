content = "just some content"
words = content.split " "

puts "before sort #{words}"
words.sort
puts "after sort #{words}"
words.sort!
puts "after sort! #{words}"


puts "\nbefore pop #{words}"
words.pop
puts "after pop #{words}"


puts "\nbefore push #{words}"
words.push "some"
puts "after push #{words}"


puts "words.count= #{words.count}"
puts "words.size= #{words.size}"


puts "about to delete words[2]: #{words[2]}"
words.delete_at 2
puts "words now is #{words}"

puts "adding a new item at the beginning with unshift"
words.unshift "some"
puts "words now is #{words}"

puts "removing an item at the beginning with shift"
words.shift
puts "words now is #{words}"
