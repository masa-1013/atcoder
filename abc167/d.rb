n, k = gets.split().map(&:to_i)
a = gets.split().map(&:to_i)

s = []
ord = Array.new(n+1, -1)
c = 1
l = 0
v = 1


while ord[v] == -1
  ord[v] = s.size()
  s << v
  v = a[v-1]
end
c = s.size - ord[v]
l = ord[v]

if k < l
  puts s[k]
else
  k -= l
  k %= c
  puts s[l+k]
end