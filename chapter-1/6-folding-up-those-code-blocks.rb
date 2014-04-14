# code blocks are chunks of code delimited by either a pair of braces
10.times {
  |n| puts "the number is #{n}"
}

# or by the do and end keywords

10.times do |n|
  puts "the number is #{n}"
  puts "twice the number is #{n*2}"
end
