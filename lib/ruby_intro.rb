# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  # call sum method on array
  return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  # check for empty array
  if arr.length == 0
    return 0
  # check for array of size 1
  elsif arr.length == 1
    return arr[0]
  else
    # if array greater size than 0 or 1 return sum of max value and second largest value
    return arr.max + arr.sort[-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # combination returns all combinations of size defined in array
  # find goes through each pair of elements to find if any of those combinations returns value of n  
  if arr.combination(2).find{|x,y| x+y==n}
    return true
  else
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  # return formatted string with name
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # check if string is empty or first character in s is not alphabet character
  if s.empty? or s[0].match(/^[[:alpha:]]+$/) == nil
    return false
  end

  # check for lowercase
  if s[0].downcase
    # checks if first character starts with vowel, if so return false
    if /^[^aeiou\W]/i.match(s[0]) == nil
        return false
    else
        # starts with consonant
        return true
    end
  else
    # otherwise check for uppercase values starting with vowel
    if /^[^AEIOU\W]/i.match(s[0]) == nil
        return false
    else
        # starts with consonant
        return true
    end
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # variable to check if converted string is valid integer, returns nil if not valid 
  is_valid = Integer(s) rescue nil
  
  # check for invalid value
  if is_valid == nil
    return false
  end

  # return true if value of s converted to binary is multiple of 4
  return s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  # constructor takes isbn and price params
  def initialize(isbn, price)
    # raise argument error if isbn is empty string or price less than or equal to 0 
    if isbn.empty? or price <= 0
        raise ArgumentError
    end

    # assign constructor variables to class variables
    @isbn = isbn
    @price = price
  end

  # ruby shorcut for getter and setter methods for class variables
  attr_accessor :isbn, :price

  # method returns price in currency format. example: $22.99 
  def price_as_string()
    return "$%.2f" % @price
  end


end
