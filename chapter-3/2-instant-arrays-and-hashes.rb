# default values for parameters
def default_params(foo, bar = 42)
  puts foo, bar
end
default_params "foo"

# arbitrary number of arguments
def arbitrary_params( *args)
  args.each do |arg|
    puts arg
  end
  # other method of iterating through array
  # args.each { |arg| puts arg }
end
arbitrary_params "foo", "bar"

# semi arbitrary number of arguments
#def semi_arbitrary_params( first, *arb_args, last )
#  puts "first #{first}"
#  arb_args.each do |arg|
#    puts arg
#  end
#  puts "last #{last}"
#end
#semi_arbitrary_params "foo", 1,2,3, "bar"


# specification hash
def setup( spec_hash )
  if spec_hash.has_key? :name
    puts spec_hash[:name] 
  else
    puts "no :name symbol!"
  end
end
setup( {:name => "bar"} )
hash = {:name => "bar"} 
setup hash
setup :name => "bar"
setup :foo => "bar"
