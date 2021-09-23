# Further exploration TODO

# Problem: A stack is a list of values that grows and shrinks dynamically. In
# ruby, a stack is easily implemented as an Array that just uses the #push and
# #pop methods.

# A stack-and-register programming language is a language that uses a stack of
# values. Each operation in the language operates on a register, which can be
# thought of as the current value. The register is not part of the stack.
# Operations that require two values pop the topmost item from the stack (that
# is, the operation removes the most recently pushed value from the stack),
# perform the operation using the popped value and the register value, and then
# store the result back in the register.
#
# Consider a MULT operation in a stack-and-register language. It multiplies the
# stack value with the register value, removes the value from the stack, and
# then stores the result back in the register. Thus, if we start with a stack of
# 3 6 4 (where 4 is the topmost item in the stack), and a register value of 7,
# then the MULT operation will transform things to 3 6 on the stack (the 4 is
# removed), and the result of the multiplication, 28, is left in the register.
# If we do another MULT at this point, then the stack is transformed to 3, and
# the register is left with the value 168.
#
# Write a method that implements a miniature stack-and-register-based
# programming language that has the following commands:
#
#     n Place a value n in the "register". Do not modify the stack.
#
#     PUSH Push the register value on to the stack. Leave the value in the
#     register.
#
#     ADD Pops a value from the stack and adds it to the register value,
#     storing the result in the register.
#
#     SUB Pops a value from the stack and subtracts it from the register value,
#     storing the result in the register.
#
#     MULT Pops a value from the stack and multiplies it by the register value,
#     storing the result in the register.
#
#     DIV Pops a value from the stack and divides it into the register value,
#     storing the integer result in the register.
#
#     MOD Pops a value from the stack and divides it into the register value,
#     storing the integer remainder of the division in the register.
#
#     POP Remove the topmost item from the stack and place in register
#     PRINT Print the register value
#
# All operations are integer operations (which is only important with DIV and
# MOD).
#
# Programs will be supplied to your language method via a string passed in as an
# argument. Your program may assume that all programs are correct programs; that
# is, they won't do anything like try to pop a non-existent value from the
# stack, and they won't contain unknown tokens.
#
# You should initialize the register to 0.
#
# Input: String of valid commands
# Output: The register value, any print commands
#
# Data Structure for stack: Array
#
# Sub-Problems:
# - Each of the command helper methods that need breaking out
#   - PUSH
#   - ADD
#   - SUB
#   - MULT
#   - DIV
#   - MOD
#
# - Method to parse the command string?
# - Method with conditional that will redirect single command to correct method
# - Actual method minilang()
#
# Algorithm (minilang)
#   - register = 0
#   - stack = []
#   - pass command string to parser method, set to commands
#   - Until no more commands
#     - current_command = commands.shift
#     - send to interpreter method with register and stack
#

def minilang(command_string)
  register = [0]
  stack = []
  commands = program_parser(command_string)
  until commands.empty?
    current_command = commands.shift
    n(register, current_command.to_i) if current_command.start_with?(/[^A-Z]/)
    interpret(register, stack, current_command)
  end
end

def program_parser(command_string)
  command_string.split(' ')
end

def interpret(register, stack, current_command)
  case current_command
  when 'PUSH' then push(register, stack)
  when 'ADD' then add(register, stack)
  when 'SUB' then sub(register, stack)
  when 'MULT' then mult(register, stack)
  when 'DIV' then div(register, stack)
  when 'MOD' then mod(register, stack)
  when 'POP' then pop(register, stack)
  when 'PRINT' then print(register)
  end
end

def n(register, value)
  register[0] = value
end

def push(register, stack)
  stack.push(register[0])
end

def add(register, stack)
  register[0] += stack.pop
end

def sub(register, stack)
  register[0] -= stack.pop
end

def mult(register, stack)
  register[0] *= stack.pop
end

def div(register, stack)
  register[0] /= stack.pop
end

def mod(register, stack)
  register[0] %= stack.pop
end

def pop(register, stack)
  register[0] = stack.pop
end

def print(register)
  puts register[0]
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
