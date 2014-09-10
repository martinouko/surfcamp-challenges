array = [1,2,3,4,5,6,7,8,9,10]
array_string = ["joe","marie","amandine","antoine","paul","pierre"]

def sum_odd_indexed(array)
  array.values_at(*array.each_index.select{|i| i.odd?}).map{|i| i.to_i}.inject(&:+)
end
puts sum_odd_indexed(array)


def even_numbers(array)
  array.select { |i|  i.even?  }
end
puts even_numbers(array)


max_length = 4
def short_words(array_string, max_length)
  array_string.reject { |i| i.length > max_length }
end
puts short_words(array_string, max_length)

limit = 3
def first_under(array, limit)
  array.detect  { |number| number < limit }
end
puts first_under(array, limit) 

def add_bang(array_string)
  array_string.map { |word| word + "!"}
end
puts add_bang(array_string)
    
def product(array)
  array.reduce(:*) 
end
puts product(array)
 
def sorted_pairs(array_string)
  result = []
  array_string.each_slice(2) do |slice| 
    result << slice.sort
  end
  return result
end
p sorted_pairs(array_string)

