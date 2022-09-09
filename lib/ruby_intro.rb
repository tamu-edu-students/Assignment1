# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  total = 0
  if arr.length() == 0
    return 0
  end
  
  
  for i in arr
    total=total+i
  end
  
  return total
  
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.length() == 0
    return 0
  end
  if arr.length() == 1
    return arr[0]
  end
  arr=arr.sort()
  size = arr.length()-1
  return arr[size] + arr[size-1]
  
  
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  size = arr.length()
  if size == 0
    return false
  end
  
  if size == 1
    return false
  end
  
  for i in 0..size-1
    for j in 0..size-1
      if i != j
        if arr[i]+arr[j]==number
          return true
        end
      end
    end
  end
  return false
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  
  if string =~ /\A[^a-zA-Z]/

    return false
  end
  
  if string.length() == 0
    return false
  end
  
  if string =~ /\A[AEIOUaeiou]/
    return false
  end
  return true
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if string.length() == 0
   return false
  end 
 
  
  
  if string !~ /[^01 ]/
    n = string.to_i(2)
    
    if n%4 == 0
      return true
    
    else
      
      return false
    end
  end
  return false
  
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
      
      if isbn.empty?
        raise ArgumentError
      end
      if price <= 0
        raise ArgumentError
      end
        
    
    
      @isbn = isbn
      @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end
  
  def price_as_string
    return "$%0.2f" % [price]
  end
end
