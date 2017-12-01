# Nick Ames
# December 1, 2017

require 'pry'
require 'to_words'

def question
  puts "please input a positive number or type QUIT to exit"
  answer = gets.strip
  exit if answer.downcase == "quit"
  answer.to_i.abs
end  

def magic_number(number)
  num_length = number.to_words.length
  if num_length == 4
    puts "#{number} is #{num_length} and #{num_length} is the magic number"
  else
    puts "#{number} is #{num_length}"
    magic_number(num_length)
  end
end

while true
  magic_number(question)
end