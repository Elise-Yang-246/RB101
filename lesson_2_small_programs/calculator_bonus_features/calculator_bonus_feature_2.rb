# Added bonus feature: number validation

def prompt(message)
  puts "=> #{message}"
end

def number?(num)
  num.to_f.to_s == num || num.to_i.to_s == num
end

def operation_to_message(op)
  case op
  when '1'
    op_verb = 'Adding'
  when '2'
    op_verb = 'Subtracting'
  when '3'
    op_verb = 'Multiplying'
  when '4'
    op_verb = 'Dividing'
  end
  return op_verb
end

prompt("Welcome to Calculator! Please enter your name:")

name = ''
loop do
  name = gets.chomp
  
  if name.empty?
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt("What's the first number?")
    number1 = gets.chomp
    
    if number?(number1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end
  
  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = gets.chomp
    
    if number?(number2)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end
  
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  
  prompt(operator_prompt)
  
  operator = ''
  loop do
    operator = gets.chomp
    
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end
  
  prompt("#{operation_to_message(operator)} the two numbers...")
  
  result =  case operator
            when '1'
              number1.to_f + number2.to_i
            when '2'
              number1.to_f - number2.to_i
            when '3'
              number1.to_f * number2.to_i
            when '4'
              number1.to_f / number2.to_f
            end
  
  prompt("The result is #{result}")
  
  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator. Good bye!")