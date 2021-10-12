require "pry-byebug"
def single_bubble(numbers)
    result = numbers.reduce([]) do |new_array, number|
        if new_array.any?
            prev_num = new_array.pop
            if prev_num > number
                new_array.push(number)
                new_array.push(prev_num)
            elsif prev_num <= number
                new_array.push(prev_num)
                new_array.push(number)
            end
        else 
            new_array.push(number)
        end
        new_array
    end
    num = result.pop
    {result: result, new_num: num}
end

def bubble_sort(numbers)
    new_array = []
    bubble_result = {}
    bubble_result[:result] = numbers
    i = 0
    while i < numbers.length
        bubble_result = single_bubble(bubble_result[:result])
        new_array = new_array.unshift(bubble_result[:new_num])
        i += 1
    end
    new_array
end 

p bubble_sort([4, 5, 6, 12, 2, 7, 1, 40, 1, 2, 4, 5])
