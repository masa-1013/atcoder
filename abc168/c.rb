a, b, h, m = gets.split().map(&:to_i)

l = (h * 60 + m) * 0.5
s = m * 6

ang = [l,s].max - [l,s].min

puts (a**2 + b**2 - 2*a*b*Math.cos(ang/180.0 * Math::PI))**0.5