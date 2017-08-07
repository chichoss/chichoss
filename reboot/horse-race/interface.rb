def get_horses
  horses = []
loop do
  print "🦄 >"
  horse = gets.chomp
  break if horse == ""
  horses << horse
  end
horses
end

def print_welcome
  puts "-" *100
  puts "      WELCOME TO WAGON HORSE RACE"
  puts "-" *100
end

def swap!(a, b)
  a, b = b, a
end

def run_race!(horses)
  rand(1..10).times do
    sleep(rand(1..4))
overtaken_horse_index = rand (0...horses.size - 1)
overtaker_horse_index = overtaken_horse_index + 1
puts "#{horses[overtaker_horse_index] a dépassé} #{horses[overtaken_horse_index]}"
swap!(horses, overtaken_horse_index, overtaker_horse_index)
end

print_welcome
horses = get_horses
p horses
run_race!(horses)

p horses
end

