# How could the following method be simplified without changing its return
# value?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# The conditional statement could be removed, and the expression will still be
# evaluated.
