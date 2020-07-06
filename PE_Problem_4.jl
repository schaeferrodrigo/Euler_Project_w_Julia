# "A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.
# "

max = 9009
for x in 100:999
    for y in x:999
        candidate = x*y
        str = string(candidate)
        last = length(str)
        if str[1] ==str[last] && str[2] ==str[last-1] && str[3]==str[last-2] && candidate > max
            global max = candidate
        end
    end
end
println("The largest palindrome made from the product of two 3-digit numbers is ", max)

# The largest palindrome made from the product of two 3-digit numbers is 906609
