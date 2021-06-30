
def sum_count(n)
    sum = n
    sum += sum_count(n-1) if n > 0
    return sum
end

def fib(n) #returns the number at that iteration
    return 0 if n == 0
    return 1 if n == 1

    fib(n-2) + fib(n-1)

end

def fib_arr(n)
    new_arr = [0,1]
    return 0 if n == 0
    return 1 if n == 1

    num = (fib_arr(n-1) + fib_arr(n-2))
    new_arr << num
end

def fast_fib(n)
    return [0,1].take(n) if n <= 2
    prev_fibs = fast_fib(n-1)
    prev_fibs << prev_fibs[-1] + prev_fibs[-2] # instance of memoization (referencing )
end


def pascal_row(n)
    p [1,1].take(n+1) if n < 2
    prev_row = pascal_row(n-1)
    fragment = []
    (0...prev_row.length-1).each do |i|
        fragment << (prev_row[i] + prev_row[i+1])
    end
    p [1] + fragment + [1]
end







