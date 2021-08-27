# Starting with this string:

munsters_description = "The Munsters are creepy in a good way."

# Convert the string in the following ways (code will be executed on original
# munsters_description above):

# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "The munsters are creepy in a good way."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

def first_conversion(string)
  string.swapcase!
end

def second_conversion(string)
  string.capitalize!
end

def third_conversion(string)
  string.downcase!
end

def fourth_conversion(string)
  string.upcase!
end
