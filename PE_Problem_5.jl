# "
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# "


function prime_numbers(final_value)
    primes = [2]
    candidate = 3
    while candidate <= final_value
        if length([x for x in primes if mod(candidate,x)==0])==0
            append!(primes, candidate)
        end
        candidate +=2
    end
    return primes
end

function small_divisible(final_value)
    primes = prime_numbers(final_value)
    factors = [x for x in primes if x <= sqrt(final_value)]
    factorization = 1
    for factor in factors
        product = factor
        while product*factor <= final_value
            product = product*factor
        end
        factorization *= product
    end
    power_1 = setdiff(primes,factors)
    total_product = prod(power_1)*factorization
    return total_product
end

println( "The smallest positive number that is evenly divisible by all of the numbers from 1 to 20 is " , small_divisible(20))


 # The smallest positive number that is evenly divisible by all of the numbers from 1 to 20 is 232792560
