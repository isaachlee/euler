#build initial array from 0-4000000.
def make_base_array(last)
  #initialize with
  array = [1,2]
  while array[-1] < last do
    array.push(array[-1] + array[-2])
  end
  #remove the last element from the array because it does not fit the criteria
  array.pop
  return array
end

start_array = make_base_array(4000000)

#remove odd numbers from the array
def remove_odd(array)
  numbers_to_remove = []
  array.each do |val|
    if val % 2 == 1
      numbers_to_remove.push(val)
    end
  end
  return array - numbers_to_remove
end

base_array = remove_odd(start_array)

#find the sum of all numbers in the array
def find_sum(array)
  sum = 0
  array.each do |element|
    sum += element
  end
  return sum
end

p find_sum(base_array)
