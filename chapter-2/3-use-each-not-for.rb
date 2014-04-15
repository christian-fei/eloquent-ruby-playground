fonts = ['courier','times roman','helvetica']
for font in fonts
  puts font
end

# idiomatic ruby says that you should use the each method
fonts.each do |font|
  puts font
end

# the latter option is preferred.
# why? becuase in the first example Ruby will actually call the each
# so why not just write what you mean?
