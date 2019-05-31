function dominant_index(nums) {
  let largest_number = Math.max(...nums)
  let nums_dup = nums.slice(0)
  nums_dup.splice(nums_dup.indexOf(largest_number), 1)
  let outcome = []

  nums_dup.forEach(function(number) {
    let double_number = number * 2

    if (double_number <= largest_number) {
      outcome.push(true)
    }
    else {
      outcome.push(false)
    };
  });

  if (outcome.includes(false)) {
    return -1
  }
  else {
    return nums.indexOf(largest_number)
  }
}

let example_one = [3, 6, 1, 0]

dominant_index(example_one)

let example_two = [1, 2, 3, 4]

dominant_index(example_two)