# there are two loops in the bubble_sort method: outer loop and inner loop
# the outer loop: controls the number of cycles and it loops n-1 cycles where n is the number of
# elements in the array
# the inner loop controls the number of comparisons and it loops array size - current value of the outer loop guard
# in the inner loop two adjacent elemens are compared
# if element at lower position is greater than the next one swaping will be performed
# this way the largest element of the array is place at the end of the array
def bubble_sort(array)
  outer_loop_guard = 1
  (array.size - 1).times do
    inner_loop_guard = 0
    while inner_loop_guard < array.size - outer_loop_guard
      if yield(array[inner_loop_guard], array[inner_loop_guard + 1])
        array[inner_loop_guard], array[inner_loop_guard + 1] = array[inner_loop_guard + 1], array[inner_loop_guard]
      end
      inner_loop_guard += 1
    end
    outer_loop_guard += 1
  end
  array
end
