n, m, q = gets.split().map(&:to_i)
query = []
ansQuestions = Array.new(n+1).map{Array.new()}
questionPoints = Array.new(m+1, n)

q.times do
  query << gets.split().map(&:to_i)
end

def getPoint(questionPoints, ansArray)
  sum = 0
  ansArray.each do |i|
    sum += questionPoints[i]
  end
  return sum
end

query.each do |array|
  if array.size == 2
    puts getPoint(questionPoints, ansQuestions[array[1]])
  else
    questionPoints[array[2]] -= 1
    ansQuestions[array[1]] << array[2]
  end
end