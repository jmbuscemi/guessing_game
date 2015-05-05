#define method for random number generator
def random
  a = rand(1..100)
  return a
end

def check_guess(a,b)
  if a < b
    puts "Your number is lower than the computers...try again"
  elsif a > b
    puts "Your number is higher than the computers...try again"
  elsif a = b
    puts "CONGRATULATIONS!! YOU WIN!!"
  end
end

#get user input
puts "Pick a number between 1 and 100: "
user_num = gets.chomp.to_i
puts "You guessed #{user_num}"

#call random number method
computer = random
#computer = computer.to_i
puts "Computer's number is #{computer}"

#check users guess
check_guess(user_num,computer)
