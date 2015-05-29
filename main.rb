# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here

def request
  puts "What would you like to do?"
  answer = gets.chomp!
  if answer == 'quit'
    puts 'bye'
  elsif answer == 'all'
      puts @candidates
      request
  elsif answer == 'qualified'
      qualified_candidates = qualified_candidates?(@candidates)
      ordered_by_qualifications(qualified_candidates)
      request
  elsif answer[5..6].to_i >= 0
    x = answer[5..6].to_i
    puts find(x)
    request
  else
    puts "Sorry didn't quite get that"
    request
  end

end

  request 


# pp qualified_candidates
