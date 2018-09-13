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
