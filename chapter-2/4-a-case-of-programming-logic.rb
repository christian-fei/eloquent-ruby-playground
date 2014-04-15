# basically everything in ruby returns a value.
# so do case and if statements
title = "war and peace"
author = case title
          when "war and peace"
            "tolstoy"
          when "romeo and juliet"
            "shakespeare"
          else
            "don't know"
          end
puts title
puts author


# more compact
title = "romeo and juliet"
author = case title
          when "war and peace" then "tolstoy"
          when "romeo and juliet" then "shakespeare"
          else "don't know"
          end
