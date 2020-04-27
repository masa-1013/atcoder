s = "1817181712114"

tmp = 0
lev = 1
mod = [0] * 2019

s.chars.reverse.each { |c|
  tmp = (c.to_i * lev + tmp) % 2019
  mod[tmp] += 1
  lev = (lev * 10) % 2019
}

puts mod.sum { |m| m * (m - 1) / 2 } + mod[0]
