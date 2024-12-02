# frozen_string_literal: true

def day_1(file_path)
  file = File.open(file_path, 'r')
  data = file.readlines(file_path).map(&:chomp)

  x_array = []
  y_array = []

  data.each do |line|
    x, y = line.split.map(&:to_i)
    
    x_array << x
    y_array << y
  end

  sortedX = x_array.sort
  sortedY = y_array.sort

  puts "Sorted X is #{sortedX}"
  puts "Sorted Y is #{sortedY}"
  file.close
end

def main
  puts 'Enter a file name'
  file_path = gets.chomp

  day_1(file_path)
end

main
