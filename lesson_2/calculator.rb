# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

# answer = gets
# puts answer
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def number?(num)
  valid_number?(num) || float?(num)
end

def valid_number?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def operator_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt(MESSAGES["welcome"])

name = ''

loop do
  name = gets.chomp
  if name.empty?()
    prompt(MESSAGES["valid_name"])
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # main
  number1 = ''
  loop do
    prompt(MESSAGES["first"])
    number1 = gets.chomp
    if number?(number1)
      break
    else
      prompt(MESSAGES["invalid"])
    end
  end
  number2 = ''
  loop do
    prompt(MESSAGES["second"])
    number2 = gets.chomp
    if number?(number2)
      break
    else
      prompt(MESSAGES["invalid"])
    end
  end
  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG
  prompt operator_prompt
  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES["invalid_operation"])
    end
  end
  prompt "#{operator_to_message(operator)} the two numbers..."
  result =  case operator
            when '1'
              number1.to_f + number2.to_f
            when '2'
              number1.to_f - number2.to_f
            when '3'
              number1.to_f * number2.to_f
            when '4'
              number1.to_f / number2.to_f
            end
  prompt "The result is #{result}"
  prompt(MESSAGES["another"])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt(MESSAGES["goodbye"])
