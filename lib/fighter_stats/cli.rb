# Our CLI Controller

class FighterStats::CLI
  
  def call
    list_weights
    menu
    goodbye
  end
  
  def list_weights
    # here doc http://blog.jayfields.com/2006/12/ruby-multiline-strings-here-doc-or.html
    puts "Fighter's Stats:"
    puts  <<-DOC.gsub /^\s*/, ''
    1. Lightweight - fighter(khabib) - stats  
    2. Heavyweight - fighter(cormier) - stats
    DOC
  end
  
  def menu
    puts "Enter the number for the weight of the fighter you want to know about or type list for weight or type exit:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on weight 1..."
      when "2"
        puts "More info on weight 2..."
      when "list"
        list_weights
      else
        puts "Not accurate, type list or exit if done."
      end
    end
  end
  
  def goodbye
    puts "Adios Snowflake!"
  end
  
end