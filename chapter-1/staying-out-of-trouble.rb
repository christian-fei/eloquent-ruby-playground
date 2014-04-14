letters = "a b c d e f"

# you could loop over the string with this code block
letters.split.each do |letter|
  puts letter
end

# or like this

letters.split.each {|letter| puts letter}


# "another method that is frequently without parentheses is instance_of?,
#  which tells you whether an object is an instance of some class/
# fun fact: the question mark at the end is just part of the method name
# don't be fooled
class DummyClass;end
letters.instance_of? DummyClass 
letters.instance_of?(DummyClass)
