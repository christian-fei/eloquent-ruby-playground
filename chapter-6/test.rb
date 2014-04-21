all = "foo"
# doesn't work
#:all = "bar"

puts all
puts :all #calls to_s

def symbol_extractor(sym)
  sym.to_s
  puts 'we do a thing because sym is equal to :all' if sym == :all
end

puts symbol_extractor :all

puts all.to_sym #wtf?