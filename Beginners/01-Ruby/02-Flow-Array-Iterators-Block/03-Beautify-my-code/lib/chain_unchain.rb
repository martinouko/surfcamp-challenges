puts "Enter a word"
a_word = gets.chomp

def shuffle_word(a_word)
    a_word.upcase.chars.to_a.shuffle   
end

puts shuffle_word(a_word)

puts "Enter a number"
n = gets.chomp.to_i

def quote_prime_numbers(n)
  #TODO: refactor this method
  
  prime = (1..n).select do |i| 
    dividers = (2..i-1).select {|k| i % k == 0 }
    dividers.empty?
  end
  
  prime.map{ |prime_num| "#{prime_num} is prime"}
end

puts quote_prime_numbers(n)