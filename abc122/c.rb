n, q = gets.split().map(&:to_i)
s = gets.chomp

lr = []

q.times do 
  lr << gets.split().map(&:to_i)
end

array = [0]

(s.size-1).times do |i|
  if s[i..i+1] == "AC"
    array[i+1] = array[i] + 1
  else
    array[i+1] = array[i]
  end
end

lr.each do |l,r|
  puts array[r-1] - array[l-1]
end

