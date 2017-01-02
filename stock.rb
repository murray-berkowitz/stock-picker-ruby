def stock_picker(arr)
    arr_copy = arr
    curr_arr = nil
    curr_diff = nil
    arr.each_with_index do |ele, index|
        index_copy = index +1
        p arr[index]
        arr_copy = arr[(index_copy)..-1]
        p arr_copy
        puts "current outer: #{index}"
        arr_copy.each_with_index do |e,i|
            if(curr_diff == nil)
                curr_diff = arr_copy[i] - arr[index]
            end
            puts "current = #{i}"
            if((arr_copy[i] - arr[index]) > curr_diff)
                curr_diff = arr_copy[i] - arr[index]
                curr_arr = [arr[index],arr_copy[i]]
            end
        end
    end
    p curr_arr
    p curr_diff
end
stock_picker([5,8,18,16,20,3,25,27])
            
            