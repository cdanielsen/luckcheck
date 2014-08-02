def luckcheck(string_of_num)
  isOdd = false
  numbers = []
  string_of_num.split('').each do |num|
    numbers << num.to_i
  end
  
  if numbers.length % 2 != 0
    isOdd = true
  end
  
  if isOdd
    if (numbers[0] == numbers[2])
      result = true
    else
      result = false
    end
  else
    if (numbers[0] == numbers[1])
      result = true
    else
      result =false
    end
  end
  result
end