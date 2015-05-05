#create guess array
guesses = Array.new

#get user input
puts "Pick a number between 1 and 100 (5 tries left): "
user_num = gets.chomp.to_i
#puts "You guessed #{user_num}"
guesses << user_num

#random number generator method
def random
  rand(1..100)
end

#guess checker method
def check_guess(a,b,guesses)
  if a < b
    puts "Your number is LOWER than the computer's...try again"
  elsif a > b
    puts "Your number is HIGHER than the computer's...try again"
  elsif a == b
    puts "CONGRATULATIONS!! YOU WIN!!"
    exit
  end
end

#message if guesses have already been made...not working
# def inclusion
#   puts "You made a HUGE mistake...you've already guessed that."
#   puts "Pick a number between 1 and 100 (#{5-a} tries left): "
#   user_num = gets.chomp.to_i
#   return
# end

#call random number method
computer = random
#puts "Computer's number = #{computer}"

#check user's guess
if user_num != computer
  (1..4).each do |a|
    check_guess(user_num,computer,guesses)
    if a < 4
      puts "Pick a number between 1 and 100 (#{5-a} tries left): "
      user_num = gets.chomp.to_i
      while guesses.include?(user_num)
        puts "You made a HUGE mistake...you've already guessed that."
        puts "Pick a number between 1 and 100 (#{5-a} tries left): "
        user_num = gets.chomp.to_i
      end
      guesses << user_num
    elsif a == 4
      puts "Pick a number between 1 and 100 (LAST TRY!): "
      user_num = gets.chomp.to_i
      while guesses.include?(user_num)
        puts "You made a HUGE mistake...you've already guessed that."
        puts "Pick a number between 1 and 100 (#{5-a} tries left): "
        user_num = gets.chomp.to_i
      end
      guesses << user_num
      if user_num != computer
        puts "You Lose! Here are your lotto numbers...err guesses: #{guesses}"
      elsif user_num == computer
        puts "Congratulations! You got it on the last try."
      end
    end
  end
else
  puts "You guessed it on the first try...that's baller!"
end
