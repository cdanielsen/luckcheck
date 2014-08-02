def luckcheck(string_of_num)
  numbers = []
  string_of_num.split('').each do |num|
    numbers << num.to_i
  end
  if numbers[0] == numbers[1]
    result = true
  else
    result = false
  end
  result
end