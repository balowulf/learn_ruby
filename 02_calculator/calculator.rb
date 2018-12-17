def add(x, y)
    x + y
end

def subtract(x, y)
    if x > y
        return x - y
    else
        return y - x
    end
end

def sum(nums)
    total = 0
    nums.each { |num|
        total = total += num
    }
    return total
end

def multiply(nums)
    total = 1
    nums.each do |num|
        total *= num
    end
    return total
end

def power(x, y)
    x ** y
end

def factorial(num)
    total = 1
    if num == 0 || num == 1 || num == nil
        return total
    else
        ary = []
        while num > 0
            ary << num
            num -= 1
        end
        i = 0
        while i < ary.length
            total *= ary[i]
            i += 1
        end
    end
    return total
end