N = 2
S = 'ABCXYZ'.chomp.split('')

ans = []
str = ""

S.each do |s|
  N.times do
    s.succ!
  end
end

puts S.join()