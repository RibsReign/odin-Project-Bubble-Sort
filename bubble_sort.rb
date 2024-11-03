# require 'pry-byebug'
def bubble_sort(numbers)
  # binding.pry
  while is_sorted(numbers) != true do
    numbers.each_with_index do |number, i|
      break if i+1 == numbers.length
      if numbers[i] > numbers[i+1]
        temp = numbers[i]
        numbers[i] = numbers[i+1]
        numbers[i+1] = temp
      end
    end
  end
  # p numbers
  numbers
end

def is_sorted(numbers) 
  numbers.each_with_index do |number, i|
    break if i+1 == numbers.length
    return false if number > numbers[i+1]
  end
  true
end

# bubble_sort([4,3,78,2,0,2])
# bubble_sort([])
# bubble_sort([1])