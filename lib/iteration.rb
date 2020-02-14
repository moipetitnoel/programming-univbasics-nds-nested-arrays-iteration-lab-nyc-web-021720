def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair


  array1 = [['pepperoni', 'sausage'], ['green olives', 'green peppers'], ['onions', 'pineapple']]
 
  join_ingredients = [ "I love " + array1[0][0] + " and " + array1[0][1] + " on my pizza", "I love " + array1[1][0] + " and " + array1[1][1] + " on my pizza", "I love " + array1[2][0] + " and " + array1[2][1] + " on my pizza" ]
  
  #i = 0
  #new_array = {}
  #while true do
   # break if (1 < i)
   #` x = "I love " + join_ingredients[0, i] + "and " + join_ingredients[1, i] + " on my pizza"
   # i += 1
   # new_array.push(x)
  #end
  #return new_array
end




def find_greater_pair(src)
  index = 0
  num_holder = []
  
  while index < src.length do
    if (src[index][0] < src[index][-1])
       num_holder.push(src[index][-1])
    elsif (src[index][-1] < src[index][0])
      num_holder.push(src[index][0])
    else
      num_holder.push(src[index][-1])
      
    
    end
    index += 1
  end
  
  return num_holder
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  sum = 0
  index = 0
  
  while index < src.length do
    if (src[index][0] % 2 == 0 && src[index][-1] % 2 == 0)
      sum += (src[index][0] + src[index][-1])
      
    
    end
    index += 1
  end
  
  return sum
end
