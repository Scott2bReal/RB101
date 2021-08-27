# Describe the difference between ! and ? in Ruby. And explain what would happen
# in the following scenarios:
#
# 1.  what is != and where should you use it?
#
#     This method will return a boolean, and is asking if the evaluated object
#     is not equal.
#
# 2.  put ! before something, like !user_name
#
#     This will return a value with the opposite truthiness from that with which
#     the object  is associated 
#
# 3.  put ! after something, like words.uniq!
#
#     Has no meaning by itself, but many times versions of methods that mutate
#     the caller will have a ! at the end of the method name
#
# 4.  put ? before something
#
#     Denotes a single characer string
#
# 5.  put ? after something
#
#     Most often will denote a method that returns a boolean
#
# 6.  put !! before something, like !!user_name
#
#     will return a boolean based on the object's truthiness
