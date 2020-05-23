n = gets.to_i
q = gets.to_i
query = []

q.times do 
  query << gets.split().map(&:to_i)
end

matrix = []
n.times do |i|
  row = []
  n.times do |j|
    row << n * i + j
  end
  matrix << row
end

def convertColumn(a, b, m)
  return m if a == b
  m = m.transpose
  m[a], m[b] = m[b], m[a]
  return m.transpose
end

def convertRow(a, b, m)
  return m if a == b
  m[a], m[b] = m[b], m[a]
  return m
end


query.each do |array|
  first = array[0]
  if first == 1
    matrix = convertRow(array[1]-1, array[2]-1, matrix)
  elsif first == 2
    matrix = convertColumn(array[1]-1, array[2]-1, matrix)
  elsif first == 3
    matrix = matrix.transpose
  else
    puts matrix[array[1]-1][array[2]-1]
  end
end
