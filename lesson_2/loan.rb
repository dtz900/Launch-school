def prompt(message)
  puts "=> #{message}"
end

name = ''
apr = ''
months = ''
years = ''
answer = ''
answer2 = ''
loan_amount = ''

prompt "Welcome to the Loan Calculator. What is your name?"
loop do
  name = gets.chomp
  if name.empty?()
    puts "Please enter a valid name."
  else
    break
  end
end
prompt "Hello #{name}!"

loop do
  loop do # main
    prompt "What is the loan amount?"
    loop do
      loan_amount = gets.chomp
      if loan_amount.empty?() || loan_amount.to_f() < 0
        prompt "Must enter positive number."
      else
        break
      end
    end
    prompt "Thank you! What is the Annual Percentage Rate? (APR)"
    prompt("(Example: 5 for 5% or 2.5 for 2.5%)")
    loop do
      apr = gets.chomp
      if apr.empty?() || apr.to_f() < 0
        prompt "Must enter positive number."
      else
        break
      end
    end
    prompt "Lastly, what is the duration of this loan in years?"
    loop do
      years = gets.chomp
      if years.empty?() || years.to_i() < 0
        prompt "Enter a valid number"
      else
        break
      end
    end
    prompt "Would you like to calculate #{loan_amount} with an APR of
    #{apr}% for #{years} years? ('y' for yes)"
    answer = gets.chomp()
    break if answer.downcase.start_with?('y')
  end
  annual_interest_rate = apr.to_f() / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i * 12
  monthly_payment = loan_amount.to_f() *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-months)))
  prompt "Your monthly payment is: $#{format('%.2f', monthly_payment)}"
  prompt "Another calculation? ('y' for yes)"
  answer2 = gets.chomp
  break unless answer2.downcase().start_with?('y')
end
prompt "Thank you for using the Loan Calculator"
prompt "Goodbye"
