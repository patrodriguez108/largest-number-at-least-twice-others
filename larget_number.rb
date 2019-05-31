def dominant_index(nums)

end

example_one = [3, 6, 1, 0]

dominant_index(example_one)

# output: 1

# explanation: 6 is the largest integer, and for every other number in the array x, 6 is more than twice as big as x.  The index of value 6 is 1, so we return 1.

example_two = [1, 2, 3, 4]

dominant_index(example_two)

# output: -1

# explanation: 4 isn't at least as big as twice the value of 3, so we return -1.