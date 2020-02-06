# Enter your object-oriented solution here!

def largest_prime_factor(input)
    i = 2
    largest_prime = 1

    while i <= input/largest_prime
        if input % i == 0 && is_prime?(i)
            largest_prime = i
        end
        i += 1
    end
    largest_prime
end

def is_prime?(input)
    i = 2
    result = true
    
    if input == 1 || input == 0
        result = false
    end

    while i < input && result == true
        if input % i == 0
            result = false
        end
        i += 1
    end
    
    result
end


class LargestPrimeFactor

    attr_reader :number

    def initialize(num)
        @number = largest_prime_factor(num)
    end

end