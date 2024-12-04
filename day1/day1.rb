def day_1(file_path)
  file = File.open(file_path, 'r')
  data = file.readlines(file_path).map(&:strip)

  x_array = []
  y_array = []

  data.each do |line|
    x, y = line.split(&:to_i)
    
    x_array << x
    y_array << y
  end

  sortedX = x_array.sort
  sortedY = y_array.sort

  total_dist = 0

  for k in 0..sortedX.length do

    current_combo = sortedX[k].to_i + sortedY[k].to_i
    total_dist += current_combo
   
  end

  file.close
  return total_dist
end

def main
  puts day_1('puzzle.txt')
end

main
