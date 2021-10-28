# The following code prompts the user to set their own password if they haven't
# done so already, and then prompts them to login with that password. However,
# the program throws an error. What is the problem and how can you fix it?

# Once you get the program to run without error, does it behave as expected?
# Verify that you are able to log in with your new password.

# password = nil
#
# def set_password
#   puts 'What would you like your password to be?'
#   new_password = gets.chomp
#   password = new_password
# end
#
# def verify_password
#   puts '** Login **'
#   print 'Password: '
#   input = gets.chomp
#
#   if input == password
#     puts 'Welcome to the inside!'
#   else
#     puts 'Authentication failed.'
#   end
# end
#
# if !password
#   set_password
# end
#
# verify_password

# The methods are not being passed the appropriate arguments. In set_password,
# password is trying to be reassigned, but it is instead declaring a new
# password variable that only exists within the scope of that method. The
# assignment of password to the user's input should be moved outside of the
# method into the main program.  Likewise, in verify_password, input is compared
# to password for equality, but as it is written verify_password does not have
# access to the main scoped variable password.

password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authenication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)