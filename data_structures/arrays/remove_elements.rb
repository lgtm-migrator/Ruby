# Arrays - Remove Elements
#
# Given an array nums and a value val, remove all instances of that value in-place and return the new length.
# Do not allocate extra space for another array, 
# you must do this by modifying the input array in-place with O(1) extra memory.
# The order of elements can be changed. It doesn't matter what you leave beyond the new length.
#
# Example
#
# Input: nums = [3,2,2,3], val = 3
# Output: 2, nums = [2,2]
#
# Input: nums = [0,1,2,2,3,0,4,2], val = 2
# Output: 5, nums = [0,1,4,0,3]

#
# Approach 1: Use `delete_if` Ruby method
#
# Time complexity: O(n)
#
def remove_elements(nums, val)
  nums.delete_if{ |num| num == val }
  nums.length
end

puts remove_elements([3,2,2,3], 3)
# => 2
puts remove_elements([0,1,2,2,3,0,4,2], 2)
# => 5

#
# Approach 2: Use `delete_at`, `unshift`, and `shift` Ruby method
#
# Time complexity: O(n)
#
def remove_elements(nums, val)
  result_length = nums.length
  shift_length = 0
  nums.each_with_index do |num, i|
    if num == val 
      nums.delete_at(i)
      nums.unshift('removed')
      result_length -=1
      shift_length += 1
    end
  end
  nums.shift(shift_length)
  result_length
end

puts remove_elements([3,2,2,3], 3)
# => 2
puts remove_elements([0,1,2,2,3,0,4,2], 2)
# => 5