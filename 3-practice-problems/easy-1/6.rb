# Starting with the string

famous_words = 'seven years ago...'

# Show two different ways to put the expected "Four score and" in front of it

'Four score and ' << famous_words

famous_words = 'seven years ago...'

famous_words.prepend('Four score and ')
