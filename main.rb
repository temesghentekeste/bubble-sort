require_relative('bubble_sort')
array = [2, 0, 5, 3]
p bubble_sort(array) { |first_number, second_number| (first_number - second_number).positive? }

array = [4,	7,	2,	1,	10,	8,	3,	5,	6,	9]
p bubble_sort(array) { |first_number, second_number| (first_number - second_number).positive? }

p(bubble_sort_by(%w[hi hello hey]) do |left, right|
  (left.length - right.length).positive?
end)

p(bubble_sort_by(%w[hi hello hey h]) do |left, right|
  (left.length - right.length).positive?
end)
