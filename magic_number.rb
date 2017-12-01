# Nick Ames
# December 1, 2017

require 'pry'
require 'to_words'

def question
  puts "please input a positive number or type QUIT to exit"
  @answer = gets.strip.downcase
  if @answer == "quit"
    puts "Thanks for playing. Goodbye!"
    exit
  else
    conclusion
  end
end  

def conclusion
  puts "#{@answer} is #{@answer.to_words}"
  puts "and #{@response} is the magic number"
  puts @response
  puts "Type QUIT to exit, or enter another number."  
  choice
end

def choice
  response = gets.strip.to_s.downcase
  if response == "quit"
    puts "Thanks for playing. Goodbye!"
    exit
  else
    conclusion
  end
end

question