#get user input
puts "Pick a number between 1 and 100 (5 tries left): "
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
puts "Computer's number = #{computer}"

#check user's guess
if user_num != computer
  (1..4).each do |a|
    check_guess(user_num,computer)
    if a < 4
      puts "Pick a number between 1 and 100 (#{5-a} tries left): "
      user_num = gets.chomp.to_i
    elsif a == 4
      puts "Pick a number between 1 and 100 (LAST TRY!): "
      user_num = gets.chomp.to_i
        if user_num != computer
          puts "5 tries...YOU LOSE!"
        elsif a == 4 && user_num == computer
          puts "Congratulations! You got it on the last try."
        end
    end
  end
else
  puts "You guessed it on the first try...that's baller!"
end
