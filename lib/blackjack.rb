def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  card_total = first_card + second_card
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
  if answer == 'h'
    card_total = card_total + deal_card
    card_total
  elsif answer == 's'
    card_total
  else
    invalid_command
    prompt_user
    card_total
  end
end

def invalid_command
  "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    hit?(total)
    display_card_total(total)
  end
  end_game
end
    
