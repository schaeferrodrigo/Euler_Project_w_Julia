# "
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#
# What is the 10 001st prime number?
# "

function prime_numbers(position)
    primes = [2]
    candidate = 3
    while length(primes) <= position-1
        if length([x for x in primes if mod(candidate,x)==0])==0
            append!(primes, candidate)
        end
        candidate +=2
    end
    return primes[end]
end

println("The 10 001st prime number ",prime_numbers(10001))

# The 10 001st prime number 104743
