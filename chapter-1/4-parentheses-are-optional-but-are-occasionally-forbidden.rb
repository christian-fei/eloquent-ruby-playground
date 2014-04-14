def test_function1
  'ouch'
end

# empty parameter lists look weird if we add the parentheses
# just leave them away
def test_function2()
  'ouch'
end


# in if statements it is not required to enclose the condition with parentheses
if test_function2 == 'ouch'
  puts 'test_function2 returned "ouch"'
else
  puts 'test_function2 did not return "ouch"'
end

test_function1
