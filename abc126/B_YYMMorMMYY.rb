s = gets.chomp
f = s[0..1]
e = s[2..3]

month = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"]

unless month.include?(f) || month.include?(e)
  puts "NA"
  exit
end

if month.include?(f) && month.include?(e)
  puts "AMBIGUOUS"
  exit
end

if month.include?(f)
  puts "MMYY"
else
  puts "YYMM"
end