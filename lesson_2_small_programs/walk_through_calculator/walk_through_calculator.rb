# my first attempt without looking at the walk-through video

# asks the user for 2 numbers
print "Please enter a number: "
first_number = Kernel.gets().chomp().to_f
print "Please enter a second number: "
second_number = Kernel.gets().chomp().to_i

# asks which operation to perform
print "What type of operation do you want to perform? (Enter add, subtract, multiply, or divide) "
operation = Kernel.gets().chomp().downcase()

# displays the result
if operation == 'add'
  puts first_number + second_number
elsif operation == 'subtract'
  puts first_number - second_number
elsif operation == 'multiply'
  puts first_number * second_number
elsif operation == 'divide'
  puts first_number / second_number
else
  puts "Please select a valid choice"
end