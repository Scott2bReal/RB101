What will the following code print, and why? Don't run the code until you have
tried to answer.

`
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
`

The code will print the original contents of array2, with the modifications made to array1.
This is because the #upcase! method is changing the string referenced by the
'value' variable
