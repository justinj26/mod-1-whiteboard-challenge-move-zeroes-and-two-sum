require 'pry'

def move_zeroes(nums)
    
    count = nums.count do |num|
        num == 0
    end
    nums.delete_if{|num| num == 0}
    count.times do 
        nums << 0
    end
    nums 
end
# At the very least, this works for the example, but there may be cases where it does not.
# def two_sum(numbers, target)
#     previous_num = numbers[0]
#     first_num = 0
#     second_num = 0
#     numbers.each do |num|
#         if num + previous_num == target
#             first_num = previous_num
#             second_num = num 
#         end
#     end
#     index_1 = numbers.find_index(first_num)
#     index_2 = numbers.find_index(second_num)
#     result = {index1: index_1, index2: index_2}
# end

def two_sum(numbers, target)
    result = {}
    numbers.each_with_index do |num_1, index_1|
        numbers.each_with_index do |num_2, index_2|
            if index_1 < index_2 
                sum = num_1 + num_2
                if sum == target 
                    result = {index1: index_1, index2: index_2}
                end
            end
        end
    end
    result 
end

binding.pry
0