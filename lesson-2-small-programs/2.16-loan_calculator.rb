require 'yaml'
MESSAGES = YAML.load_file('loan_calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt(MESSAGES['welcome'])

name = nil
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  amount = nil
  loop do
    prompt(MESSAGES['loan_amount'])
    amount = Kernel.gets().chomp()

    if amount.empty?() || amount.to_f() < 0
      prompt(MESSAGES['not_positive'])
    else
      break
    end
  end

  rate = nil
  loop do
    prompt(MESSAGES['interest_rate'])
    rate = Kernel.gets().chomp()

    if rate.empty?() || rate.to_f() < 0
      prompt(MESSAGES['not_positive'])
    else
      break
    end
  end

  years = nil
  loop do
    prompt(MESSAGES['loan_duration'])
    years = Kernel.gets().chomp()

    if years.empty?() || years.to_i() < 0
      prompt(MESSAGES['invalid_number'])
    else
      break
    end
  end

  annual_interest_rate = rate.to_f() / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years.to_i() * 12

  monthly_payment =
    amount.to_f() *
    (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-months)))

  prompt("Your monthly payment is: $#{format('%02.2f', monthly_payment)}")

  prompt(MESSAGES['repeat'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['fin'])
