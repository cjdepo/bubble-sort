def bubble_sort(numbers)
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
    result
end

p bubble_sort([4, 5, 6, 3, 2, 7, 1])