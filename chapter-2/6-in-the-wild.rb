# the expression-oriented nature of ruby
file = all ? 'specs' : 'latest_specs'
# this is an example of the ternary operator
# it acts as a very compact if statement
# if the condidition (the return value of the 'all' method)
# is true (so actually everything except false or nil),
# file will contain the value 'specs'
# else the value 'latest_specs'



# another example if the initialization of variables:
# let's say you want to make sure that the variable @first_name
# is not nil, you could write something like this
@first_name = '' unless @first_name
# an experienced ruby programmer thought will suggest this method
@first_name ||= ''

# what is this?
# remember that
count += 1
# is the same as writing
count = count + 1

# so, the same expansion applies here
@first_name = @first_name || ''

# moral of the story: don't try to use ||= to initiliaze variables to booleans
