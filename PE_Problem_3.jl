# "The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?"

candidate = 3
to_be_divided = 600851475143
prime_numbers = [2]
max_prime = 1

while candidate <= to_be_divided
    if length([x for x in prime_numbers if mod(candidate,x)==0]) == 0
        append!(prime_numbers , candidate)
        if mod(to_be_divided,candidate) == 0
            global max_prime = candidate
            global to_be_divided = to_be_divided/max_prime
        end
    end
    global candidate +=1
end
println("the largest prime factor of  600851475143 is ", max_prime)


# the largest prime factor of  600851475143 is 6857
