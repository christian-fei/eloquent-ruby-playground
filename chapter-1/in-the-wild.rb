# in this chapter the book describes and shows examples for idiomatic ruby
# by inviting you to take a closer look at the Set class of the Ruby standard library

require 'set'
s1 = Set.new [1,2]
s2 = [1,2].to_set
s1 == s2

# fun facts the 'Float' method, notice the CamelCase syntax though it's a method.
# this because this method acts like a stand-in for the class name
pi = Float('3.14259')
