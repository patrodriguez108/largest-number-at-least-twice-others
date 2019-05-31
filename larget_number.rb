# isolate largest number into variable
# clone array
# remove largest number from clone array
# iterate through array without largest number
  # check if number * 2 is less than or equal to largest number
    # if true, store true into an empty array
    # if false, store false into empty array
# if array includes false, return -1
# if does not include false, return index of largest number within original array

def dominant_index(nums)
  largest_number = nums.max
  nums_dup = nums.dup
  nums_dup.delete(largest_number)
  outcome = []

  nums_dup.each do |number|
    double_number = number * 2

    if double_number <= largest_number
      outcome << true
    else
      outcome << false
    end
  end

  if outcome.include?(false)
    -1
  else
    nums.index(largest_number)
  end
end

example_one = [3, 6, 1, 0]

dominant_index(example_one)

# output: 1

# explanation: 6 is the largest integer, and for every other number in the array x, 6 is more than twice as big as x.  The index of value 6 is 1, so we return 1.

example_two = [1, 2, 3, 4]

dominant_index(example_two)

# output: -1

# explanation: 4 isn't at least as big as twice the value of 3, so we return -1.