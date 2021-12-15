#!/usr/bin/env ruby

require_relative 'classes/dice_roller'
require_relative 'classes/dice_set'

puts "~" * 30
puts "| Welcome to the Dice Roller |"
puts "~" * 30 + "\n"

dice_set = DiceSet.new
puts dice_set.display  + "\n"

response = nil
until response == "q"
  puts "\nType 'r' to roll again, 'q' to quit"
  print '> '
  response = gets.chomp

  if response == 'r'
    dice_set.roll
    puts "\n" + dice_set.display
  end

end