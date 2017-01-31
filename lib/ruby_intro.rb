# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  sum(arr.max(2))
end

def sum_to_n? arr, n
  result = false
  for x in arr 
    for y in arr 
      if (((x + y) == n)  and (x != y))
        result = true
      end
    end
  end 
  result
end



# Part 2

def hello(name)
  h = "Hello, "
  h << name
end

def starts_with_consonant? s
  result = true
  s.capitalize!
  c = s.chr
  if ((c == 'A') or (c == 'E') or ( c == 'I') or (c == 'O')  or (c == "U") )
    result = false
  end
  if (not /[A-Z]/.match(c))
    result = false
  end
  result
end

def binary_multiple_of_4? s
  result = true
  s.reverse!
  
  place = 0
  total = 0
  while s != ""
    a = s[0] 
    s = s[1..-1]
    if a == '1'
      total += (2**place)
    elsif a == '0'
    else 
      result = false
    end
    place += 1
  end
  if (place == 0)
    result = false
  end
  if (total % 4) != 0
    result = false
  end
  result
end



# Part 3

class BookInStock
  def initialize(isbn, price)
    unless price.is_a?(Numeric)
      raise ArgumentError.new("The price must be a number")
    end
    unless isbn.is_a?(String)
      raise ArgumentError.new("The isbn must be a string")
    end
    if (isbn == "") or (price <= 0) 
      raise ArgumentError.new("Either price or isbn is invalid")
    end 
    @isbn = isbn
    @price = price
  end
  
  def price_as_string 
    price = @price.to_s
    
    if price[-2] == '.'
      price << '0'
    elsif price[-3] == '.'
    else 
      price << '.00'
    end 
    
    price.insert(0, '$')
  end 
  
  def isbn 
    @isbn  
  end
  def isbn= x
    unless x.is_a?(String)
      raise ArgumentError.new("The isbn must be a string")
    end
    if (x == "")
      raise ArgumentError.new("isbn is invalid")
    end 
    @isbn = x
  end 
  def price 
    @price
  end
  def price= x
    unless x.is_a?(Numeric)
      raise ArgumentError.new("The price must be a number")
    end
    if (price <= 0) 
      raise ArgumentError.new("Price is invalid")
    end 
    @price = x
  end
end
