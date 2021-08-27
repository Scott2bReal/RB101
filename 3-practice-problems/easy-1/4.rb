# The Ruby Array class has several methods for removing items from the array.
# Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original
# array between method calls)?

numbers.delete_at(1)

numbers = [1, 2, 3, 4, 5]

numbers.delete(1)

# The #delete_at method will delete the element at index 1, while #delete will
# delete any elements whose vaulue match that of the argument, in this case 1
