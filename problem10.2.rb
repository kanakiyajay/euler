limit = 200
root = Math.sqrt(limit)

(5..limit).each { |x| primes[x] = 0}

(1..root).each do |x|
    (1..root).each do |y|
        n = 4*x**2 + y**2
        if  (n <= limit) and ( n % 12 == 1 or n % 12 == 5)
            primes[n] = false
        end
    end
end
// put in candidate primes: 
// integers which have an odd number of
// representations by certain quadratic forms

for (x, y) in [1, √limit] × [1, √limit]:
    n ← 4x²+y²
    if (n ≤ limit) and (n mod 12 = 1 or n mod 12 = 5):
        is_prime(n) ← ¬is_prime(n)
    n ← 3x²+y²
    if (n ≤ limit) and (n mod 12 = 7):
        is_prime(n) ← ¬is_prime(n)
    n ← 3x²-y²
    if (x > y) and (n ≤ limit) and (n mod 12 = 11):
        is_prime(n) ← ¬is_prime(n)
  
// eliminate composites by sieving
for n in [5, √limit]:
    if is_prime(n):
        // n is prime, omit multiples of its square; this is
        // sufficient because composites which managed to get
        // on the list cannot be square-free
        is_prime(k) ← false, k ∈ {n², 2n², 3n², ..., limit} 

print 2, 3
for n in [5, limit]:
    if is_prime(n): print n