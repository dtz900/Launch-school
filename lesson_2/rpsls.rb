VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
VALID_CHOICE_ABBREVIATIONS = ['r', 'p', 'sc', 'l', 'sp']

WINNIG_MOVES = {
    'paper' => { 'rock' => 'covers', 'spock' => 'disproves' },
    'scissors' => { 'paper' => 'cuts', 'lizard' => 'decapitates' },
    'lizard' => { 'paper' => 'eats', 'spock' => 'poisons' },
    'spock' => { 'scissors' => 'smashes', 'rock' => 'vaporizes' }
  }
  
def attack_move(victor, defeated)
   WINNIG_MOVES[victor][defeated]
end


def clear_screen
  system("clear")
end 

def prompt(message)
  puts "=> #{message}"
end

def convert_abbreviations(input)
  case input
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 'sc'
    'scissors'
  when 'l'
    'lizard'
  when 'sp'
    'spock'
  end
end

def display_rules
  puts <<-MSG
  
  **************************RULES****************************
  |                                                         |
  | Rock crushes Scissors,      Rock crushes Lizard,        |
  | Paper covers Rock,          Paper disproves Spock,      |
  | Scissors cuts Paper,        Scissors decapitates Lizard,|
  | Lizard poisons Spock,       Lizard eats Paper,          |
  | Spock smashes Scissors,     Spock vaporizes Rock,       |
  |                                                         |
  ***********************************************************
  
  MSG
end

def display_scoreboard
  puts "Player wins: #{player_score} Computer wins: #{comp_score}"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
end
  

def welcome_message
  puts "*** Welcome to #{VALID_CHOICES.join(', ')}! ***"
end


def player_wins?(player, computer)
  key_defeats_values = {
    'rock' => ['scissors', 'lizard'],
    'paper' => ['rock', 'Spock'],
    'scissors' => ['paper', 'lizard'],
    'lizard' => ['paper', 'Spock'],
    'Spock' => ['scissors', 'rock']
  }
  key_defeats_values[player]
end

def display_results(player, computer)
  if player_wins?(player, computer)
    prompt "#{player.capitalize} #{attack_move(player, computer)} #{computer}"
    prompt "You won!"
  elsif player_wins?(computer, player)
    prompt "#{computer.capitalize} #{attack_move(computer, player)} #{player}"
    prompt "Computer won!"
  else 
    prompt "It's a tie!"
  end
end

loop do
  player_score = 0
  comp_score = 0
  loop do
    choice = ''
    clear_screen
      
    welcome_message
    sleep 3
    clear_screen
      
      
    display_rules
    sleep 3
      
    prompt "First to 3 points wins!"
    
    prompt "Player wins: #{player_score} Computer wins: #{comp_score}"
    
    
    loop do
      prompt "Please make your selection:"
      puts "Enter 'r' for rock, 'p' for paper', 'sc' for scissors,
        'l' for lizard, and 'sp' for spock."
        
      choice = gets.chomp.downcase
        
      if VALID_CHOICES.include?(choice)
        break
      elsif VALID_CHOICE_ABBREVIATIONS.include?(choice)
        choice = convert_abbreviations(choice)
        break
      else 
        prompt "That's not a valid choice."
      end
    end
      
    computer_choice = VALID_CHOICES.sample
      
    prompt "You chose #{choice}, and Computer chose #{computer_choice}."
      
    display_results(choice, computer_choice)
  end
end