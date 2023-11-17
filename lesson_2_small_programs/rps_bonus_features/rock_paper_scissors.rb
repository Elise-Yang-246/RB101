VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_choice?(user_input)
  return false if user_input == 's'
  selection = VALID_CHOICES.select { |element| element.start_with?(user_input) }
  if selection.empty?
    nil
  else
    true
  end
end

def user_choice_full_word(user_input)
  if user_input.start_with?('r')
    'rock'
  elsif user_input.start_with?('p')
    'paper'
  elsif user_input.start_with?('sc')
    'scissors'
  elsif user_input.start_with?('l')
    'lizard'
  elsif user_input.start_with?('sp')
    'spock'
  end
end

def win?(first, second)
    (first.start_with?('sc') && second.start_with?('p')) ||
      (first.start_with?('p') && second.start_with?('r')) ||
      (first.start_with?('r') && second.start_with?('l')) ||
      (first.start_with?('l') && second.start_with?('sp')) ||
      (first.start_with?('sp') && second.start_with?('sc')) ||
      (first.start_with?('sc') && second.start_with?('l')) ||
      (first.start_with?('l') && second.start_with?('p')) ||
      (first.start_with?('p') && second.start_with?('sp')) ||
      (first.start_with?('sp') && second.start_with?('r')) ||
      (first.start_with?('r') && second.start_with?('sc'))
end

def display_results(player, computer)
  if win?(player, computer)
    'You won!'
  elsif win?(computer, player)
    'Computer won!'
  else
    "It's a tie!"
  end
end

loop do
  choice = ''
  loop do
    puts '---------------------------------------------------'
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt("You may simply enter 'r' for 'rock', 'p' for 'paper', 'sc' for 'scissors', 'l' for 'lizard', or 'sp' for 'spock'.")
    choice = Kernel.gets.chomp
    
    if valid_choice?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  
  computer_choice = VALID_CHOICES.sample
  
  choice_in_full = user_choice_full_word(choice)
  prompt("You chose: #{choice_in_full}; Computer chose: #{computer_choice}")
  
  prompt(display_results(choice, computer_choice))

  prompt('Do you want to play again?')
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing. Goodbye!')
