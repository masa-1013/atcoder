n, m = gets.split().map(&:to_i)
ps = []
seen = Array.new(n+1, false)
wa = Array.new(n+1, 0)

m.times do
  ps << gets.chomp.split()
end

ps.each do |p, s|
  if s == "AC"
    seen[p.to_i] = true
    next
  end
  next if seen[p.to_i]
  wa[p.to_i] += 1
end

acSum = 0
waSum = 0

(n+1).times do |i|
  if seen[i]
    acSum += 1
    waSum += wa[i]
  end
end

puts "#{acSum} #{waSum}"
