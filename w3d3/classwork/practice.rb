def iter_range(start, finish)
    (start...finish).map {|ele| ele }
end

# p iter_range(1, 8)

def recursive_range(min, max) # 1, 2
    return [] if max <= min
    recursive_range(min, max - 1) << max - 1
 end

# p recursive_range(1, 7)


def deep_dup(arr)
    return [] if arr.empty?
    new_arr = []

    arr.each do |ele|
        if ele.is_a?(Array)
            new_arr << deep_dup(ele)
        else
            new_arr << ele
        end
    end

    new_arr
end


# p deep_dup ([1, [2], 3, [4, 5]])


def iter_fib(n)
    seq = [1, 1]

    while seq.length < n
        last = seq[-1]
        second_last = seq[-2]
        seq << last + second_last
    end

    seq
end


def fibonacci(n)
    return [1] if n == 1
    return [1] if n == 2
    fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1)
p fibonacci(2)
p fibonacci(3)
p fibonacci(4)
p fibonacci(5)








