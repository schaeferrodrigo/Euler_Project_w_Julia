# "The sum of the squares of the first ten natural numbers is,
# 12+22+...+102=385
#
# The square of the sum of the first ten natural numbers is,
# (1+2+...+10)2=552=3025
#
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025−385=2640
#
# .
#
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum."
#

#(\sum_{i=1}^n x_i)^2 = \sum_{i=1}^n x_i^2 + 2 *sum_{i<j , i=1}^n x_ix_j
function diff_squares(final_value)
   sum = 0
   for number_1 in [1:final_value;]
       for number_2 in [(number_1+1):final_value;]
           sum = sum + 2 * number_1*number_2
       end
   end
   return sum
end

println("the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum is ", diff_squares(100))

# the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum is 25164150
