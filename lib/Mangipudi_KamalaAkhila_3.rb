# Part 3

class BookInStock
        attr_accessor :isbn, :price
        #Constructor
		#Raise an argument error if isbn is an empty string of if the price is less than zero
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
