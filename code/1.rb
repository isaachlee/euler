#build initial array from 0-999, keeping only integers divisble by 3 or 5
def make_base_array(low, high)
  array = Array.new()
  current = low
  array[0] = low
  while array[-1] < high do
    current += 1
    if current % 3 == 0 || current % 5 == 0
      array.push(current)
    end
  end
  return array
end

start_array = make_base_array(0, 999)

#find the sum of all numbers in the array
def find_sum(array)
  sum = 0
  array.each do |element|
    sum += element
  end
  return sum
end

p find_sum(start_array)
