require 'pry'

def crunch(string)
  final_string = ''
  index = 0
  while index <= string.length - 1
    unless string[index] == string[index + 1]
      final_string << string[index]
    end
    index += 1
  end
  final_string
end

puts crunch('ddaaiillyy ddoouubbllee')
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
