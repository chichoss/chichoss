$catalogue = [
  {
    name: "kiwi",
    price: 1.25
  },
  {
    name: "banana",
    price: 0.5
  },
  {
    name: "mango",
    price: 4
  },
  {
    name: "asparagus",
    price: 9
  }
]

puts "In our store today:"

$catalogue.each do |item|
  puts "#{item[:name]} : #{item[:price]}€"
end

def billing
puts " Which item? (or 'quit' to checkout)"
  sum = 0
  loop do
    item = gets.chomp
    case item
    when "kiwi" then puts " Which item? (or 'quit' to checkout)"
      sum += 1.25
    when "mango" then puts " Which item? (or 'quit' to checkout)"
      sum += 4
    when "banana" then puts " Which item? (or 'quit' to checkout)"
      sum += 0.5
    when "asparagus" then puts " Which item? (or 'quit' to checkout)"
      sum += 9
    when "quit" then exit
    else
      puts "Sorry, we don't have #{item} today.."
    end
  end
end


billing
puts "#{sum}"


$cart = []

def

def print_menu
  puts "1. Display catalogue"
  puts "2. Add to cart"
  puts "3. Remove from cart"
  puts "4. Print cart" # print total
  puts "5. Exit"
end

loop do
  print_menu
  user_choice = gets.chomp.to_i
  case user_choice
  when 1 then puts "Executing display_catalogue..."
  when 2 then puts "Executing add_to_cart..."
  when 3 then puts "Executing remove_from_cart..."
  when 4 then puts "Executing print_cart..."
  else
    exit
  end
end
