# Part 1

def sum arr
  # total contains the sum of the elements
        total = 0
        for x in arr
                 total = total+x
        end
        total
end

def max_2_sum arr
  # if length >=1, take the first two largest elements using max and then add them and return the sum
        if arr.length == 0
                return 0
        elsif arr.length == 1
                return arr[0]
        else
                return arr.max(2).reduce(:+)
        end
end

def sum_to_n? arr, n
  # If hash_map has the key n-i, then that means key+i = n and hence return true
        hash_map = Hash.new
        for i in arr
                if hash_map.key?(n-i)
                        return true
                end
                hash_map[i] = i
        end
        return false
end

# Part 2

def hello(name)
        "Hello, "+name
end

def starts_with_consonant? s
        s =~ /^(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
        return true if s == "0"
        /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
        attr_accessor :isbn, :price
        #Constructor
        #If isbn is an empty string or if price < 0 then raise an Argument error
        def initialize(isbn,price)
                if isbn == "" or  price <= 0
                        raise ArgumentError.new("Invalid parameter values")
                else
                        @isbn = isbn
                        @price = price
                end
        end
        def price_as_string
                sprintf("$%.2f", @price)
        end

end
