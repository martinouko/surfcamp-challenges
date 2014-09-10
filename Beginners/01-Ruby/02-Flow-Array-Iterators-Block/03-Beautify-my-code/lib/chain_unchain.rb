puts "Enter a word"
a_word = gets.chomp

def shuffle_word(a_word)
    a_word.upcase.chars.to_a.shuffle   
end

puts shuffle_word(a_word)

def quote_prime_numbers(n)
  #TODO: refactor this method
  
  (1..n).find_all {|i| (2..i-1).select {|k| i % k == 0 }.count == 0 }.map{ |prime_num| "#{prime_num} is prime"}
end