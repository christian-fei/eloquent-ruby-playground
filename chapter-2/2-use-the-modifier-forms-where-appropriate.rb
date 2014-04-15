# since the following code looks a lil bit too verbose as it needs to be
# class declaration etc.
  def title=(new_title)
    if @writable
      @title = new_title
    end
  end
# it could be written like this, less verbose, one liner
  def title=(new_title)
    @title = new_title if @writable
  end


# the same goes for while/until blocks

document.print_next_page while document.pages_available?
# or
document.print_next_page until document.printed?
