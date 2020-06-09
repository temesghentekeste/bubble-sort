require_relative('bubble_sort')
array = [2, 0, 5, 3]
p bubble_sort(array) { |first_number, second_number| (first_number - second_number).positive? }

array = [4, 7,	2,	1,	10,	8,	3,	5,	6,	9]
p bubble_sort(array) { |first_number, second_number| (first_number - second_number).positive? }
