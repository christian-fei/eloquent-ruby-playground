# classes with CamelCase
class JustAClass
  # snakes for everythiung else
  # including functions, variables, constants
  def count_words_in(string)
    the_words =  string.split
    the_words.size
  end
end

THE_CONSTANT = 'the majestic constant'
jac = JustAClass.new
puts jac.count_words_in(THE_CONSTANT)
