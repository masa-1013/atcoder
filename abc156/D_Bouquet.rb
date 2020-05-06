#難しいのでやらない
#繰り返し２乗法

n = 1000000000
all = 1
mod = 10**9+7

def modPow(a, n, p)
  return a % p if n == 1
  if n % 2 == 0
    tmp = modPow(a, n/2, p)
    return (tmp * tmp) % p
  else
    return (2 * modPow(a, n-1, p)) % p
  end
end


puts modPow(2, n, mod)