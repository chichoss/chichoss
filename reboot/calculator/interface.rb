def calculator(operand_1, operand_2, operator)

require_relative "calculator"
loop do
  puts "Enter a first number:"
  operand_1 = gets.chomp.to_i

  puts "Which operation [+][-][x][/]"
  operator = gets.chomp

  puts "Enter a second number:"
  operand_2 = gets.chomp.to_i

  puts "Do another calculation ? (Y/N)"
  choice = gets.chomp
  break unless choice.downcase.start_with?"y"
  end

  puts calculator(operand_1, operand_2, operator)

end




