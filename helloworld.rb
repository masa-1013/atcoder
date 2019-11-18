def my_permutation(seed, curr=[], &proc)
    if seed.empty?
      proc.call(curr)
      return
    end
  
    0.upto(seed.size-1) do |i|
      newSeed = seed.dup
      newSeed.delete_at(i)
      my_permutation(newSeed, curr + [seed[i]], &proc)
    end
end

my_permutation([1, 2, 3]) do |x|
    p x
end


