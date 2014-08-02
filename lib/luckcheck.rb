def luckcheck(string_of_num)
  numbers = []
  string_of_num.split('').each do |num|
    numbers << num.to_i
  end
  numbers
end