# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  return arr.max(2).sum()
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.each do |i|
    tmp = []
    tmp.replace(arr)
    tmp.delete_at(arr.index(i))
    if tmp.include?(n-i)
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{ name }"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s[0,1][/[a-zA-Z]+/]  == s[0,1]
    not ['A','E','I','O','U'].include?(s[0,1].upcase)
  else
    false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == ''
    return false
  end
  s.each_char do |i|
    if not (i=='0' or i=='1')
      return false
    end
  end
  num = s.to_i(2)
  # puts(num)
  if num%4 == 0
    true
  else
    false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError.new(
    "ISBN can not be empty!"
    ) if isbn == ""
    @isbn = isbn
    
    raise ArgumentError.new(
    "Price should greater than 0!"
    ) if price <= 0
    @price = price
  end
 
  def isbn
    @isbn
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price
    @price
  end
  
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string
    "$%0.2f" % [@price]
  end
end
