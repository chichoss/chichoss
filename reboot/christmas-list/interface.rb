# interface.rb
require_relative 'moteur.rb'
require_relative 'scraping_etsy.rb'
# Pseudo-code:
# 1. Welcome
$list = {}

def get_user_action
  loop do
    display_menu
     user_action = gets.chomp
      case user_action
      when "list" then display_list
      when "add" then add_item
      when "delete" then delete_item
      when "mark" then mark_item
      when "quit" then puts "Goodbye"
        exit
      else puts "I don't get it"
      end
  end
end

scrapping
welcome
get_user_action




# 4. Perform the right action
