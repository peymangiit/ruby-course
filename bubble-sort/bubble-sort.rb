def bubble_sort (array)
    swapped = true
    checker = (array.length-1)
    while swapped
        for index in 0...(array.length-1)
            if array[index] > array[index+1]
                array[index], array[index + 1] = array[index + 1], array[index]
            end
        end

        checker = checker - 1
        if checker == 0
            swapped = false
        end
    end
    array
end

p bubble_sort([4,3,78,2,0,2])