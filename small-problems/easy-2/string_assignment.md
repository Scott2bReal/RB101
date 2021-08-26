Take a look at the following code:

`
name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
`

What does this code print out? Think about it for a moment before continuing.

If you said that code printed

`
Alice
Bob
`
you are 100% correct, and the answer should come as no surprise. Now, let's look
at something a bit different:

`
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
`

What does this print out? Can you explain these results?

the #upcase! method mutates its caller, which in this case is the String 'Bob'.
This permanently alters 'Bob' to 'BOB'. Both the name and save_name variables
point to that string, so they both print 'BOB'
