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
