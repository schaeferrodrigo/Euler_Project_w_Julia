
#
# "If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000."
#
#
#
# "If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.\n\nFind the sum of all the multiples of 3 or 5 below 1000."


sum = 0
num = 0
while num < 1000
    if mod(num,3)== 0 || mod(num,5) ==0
        global sum = sum + num
    end
    global num +=1
end

println("the sum of all the multiples of 3 or 5 is " ,sum)


# output: the sum of all the multiples of 3 or 5 is 233168
