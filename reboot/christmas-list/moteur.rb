def welcome
  puts "-" * 50
  puts "Welcome to your Christmas giftlist"
  puts "-" * 50
end

# 2. Display menu (list / add / delete / mark )

def display_menu
  puts "Which action [list|add|mark|idea|delete|quit]?"
end

def display_list
  i = 1
  $list.each do |key, value|
    value == false ? crochet = "[ ]" : crochet = "[X]"
    puts "#{i}- #{key}: #{crochet}"
    i+=1
  end
end

def delete_item
  puts "Which to delete?"
  user_choice = gets.chomp.to_i - 1
  $list.each_with_index do |(key,value),index|
    if index == user_choice then $list.delete(key)
    end
  end
    puts "item deleted"
end

def mark_item
  puts "Which item did you already buy?"
  user_choice = gets.chomp.to_i - 1
  $list.each_with_index do |(key,value),index|
    if index == user_choice then $list[key] = true
    end
  end
    puts "item marked"
end

def add_item
  puts "which item do you want to add ?"
  user_choice = gets.chomp
  $list[user_choice] = false
  puts "Your item has been added"
end
