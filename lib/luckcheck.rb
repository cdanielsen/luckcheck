def luckcheck(string_of_num)
  
  isOdd = false
  first_half = 0
  second_half = 0
  numbers = []
  
  string_of_num.split('').each do |num|
    numbers << num.to_i
  end
  
  if numbers.length % 2 != 0
    isOdd = true
  end
  
  if isOdd
    0.upto((numbers.length - 3) / 2) do |i|
      first_half += numbers[i]
    end
    ((numbers.length + 1) / 2).upto(numbers.length - 1) do |i|
      second_half += numbers[i]
    end
    
    if first_half == second_half
      result = true
    else
      result = false
    end
    
  else #if even
    0.upto(numbers.length / 2 - 1) do |i|
      first_half += numbers[i]
    end
    (numbers.length / 2).upto(numbers.length-1) do |i|
      second_half += numbers[i]
    end
    
    if first_half == second_half
      result = true
    else
      result =false
    end 
  end
  
  result
end