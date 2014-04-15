# in ruby only false and nil are treated as false
# so, in ruby 0, actually is true in ruby (contrary to other programming languages)
# because it is neither false nor nil

# an interesting scenario is when dealing with
# iterators
while next_object = get_next_object
  # ...
end

# this will break if the 'next_object' is false.

# a cleaner way to handle this:
until (next_object = get_next_object) == nil
  # ...
end
#or
until (next_object = get_next_object).nil?
  # ...
end
