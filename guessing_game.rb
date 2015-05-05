#get user input
puts "Pick a number between 1 and 100: "
user_num = gets.chomp.to_i
puts "You guessed #{user_num}"

#define methods for random number generator
def random
  rand(1..100)
end

def check_guess(a,b)
  if a < b
    puts "Your number is lower than the computers...try again"
  elsif a > b
    puts "Your number is higher than the computers...try again"
  elsif a == b
    puts "CONGRATULATIONS!! YOU WIN!!"
    exit
  end
end

#call random number method
computer = random

#check users guess
if user_num != computer
  (1..5).each do
    check_guess(user_num,computer)
    puts "Pick a number between 1 and 100: "
    user_num = gets.chomp.to_i
  end
else
  puts "You guessed it on the first try...that's baller!"
end
