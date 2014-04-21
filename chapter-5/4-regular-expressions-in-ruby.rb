# in ruby is the Regexp class
r1 = /\d\d:\d\d (a|p)m/i
str1 = "test"
str2 = "12:34 PM"
puts "#{str1} matches?", !(r1 =~ str1).nil?
puts "#{str2} matches?", !(r1 =~ str2).nil?

# or ruby style

puts "#{str1} matches" if r1 =~ str1
puts "#{str2} matches" if r1 =~ str2

# the =~ is ambidextrous, it doesn't matter wheter the string or the regexp comes first
puts "#{str2} matches" if str2 =~ r1
puts "#{str2} matches" if r1 =~ str2

# this means that both string and regexp respond_to? "=~"
puts String.respond_to? "=~"
puts Regexp.respond_to? "=~"



# obfuscated times
def obfuscate_times(time)
  time.gsub(/\d\d:\d\d (a|p)m/i,"**:** **")
end

puts obfuscate_times str1
puts obfuscate_times str2