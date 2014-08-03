require './lib/luckcheck.rb'

def main_menu
  system('clear')
  puts "Welcome to Lucky Ticket Check!"
  sleep(1)
  puts "Please enter at least two numbers to check your luck..."
  input = gets.chomp
  
  if input.length < 2
    puts "I need at least TWO numbers!!"
    main_menu
  else
    print "Checking"
    1.upto(3) do |i|
      print '.'
      sleep(1)
    end
    
    if luckcheck(input) == true
      puts "\n" + "Word to your mother: your ticket is LUCKY!"
    else
      puts "\n" + "Sorry: no luck for you!"
    end
    
    puts "\n" + "Type 'y' to check another number, or any other key to exit!"
    decision = gets.chomp
    if decision == "y"
      system('clear')
      main_menu
    end
    
  end
end
main_menu