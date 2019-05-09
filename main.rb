require 'colorize'


def puts_git(cmd)
  puts `git #{cmd} -h`
  menu
end

def menu
  puts "Main Menu".colorize(:cyan)
  puts '1: Enter git command'.colorize(:yellow)
  puts '2: Exit'.colorize(:magenta)
  choice = gets.to_i
  print `clear` 
  case choice
  when 1
    puts 'Enter git command'.colorize(green)
    puts_git(gets.strip)
    menu
  when 2
    puts "Thanks for using the program".colorize(:blue)
    sleep (.5)
    exit
  else
    puts 'Invalid choice'.colorize(:red)
    sleep(2)
    print `clear`
    menu
  end
end

menu
