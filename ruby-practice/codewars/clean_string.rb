=begin

Assume "#" is like a backspace in string. This means that string "a#bc#d"
actually is "bd"

Your task is to process a string with "#" symbols.

Examples

"abc#d##c"      ==>  "ac"

"abc##d######"  ==>  ""

"#######"       ==>  ""

""              ==>  ""

Algorithm:
  init new_chars = []
  if char isn't a #
    add to new_chars
  else
    remove one char from new_chars

=end

def clean_string(string)
  new_chars = []

  string.each_char do |char|
    char == '#' ? new_chars.pop : new_chars << char
  end
  new_chars.join
end

p clean_string('abc#d##c') #== "ac"

p clean_string('abc####d##c#') #== ""
