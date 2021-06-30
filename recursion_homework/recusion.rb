
class Recursion

    def range(start_num, end_num)
        return [end_num - 1] if end_num - 1 == start_num
        arr = [start_num] + range(start_num + 1, end_num)
    end

    def range_iter(start_num, end_num)
        idx = start_num
        new_arr = []

        while idx < end_num
            new_arr << idx
            idx += 1
        end

        new_arr
    end

    def exp1(base, exp)
      return 1 if exp == 0
      base * exp1(base, exp-1)  
    end

    def exp2(base, exp)
        new_int = 1
        exp.times do 
            new_int *= base
        end
        new_int
    end

    def exp3(base, exp)
        return 1 if exp == 0

        if exp.even?
            exp3(base, exp / 2) ** 2
        else
            base * (exp3(base, (exp - 1) / 2) ** 2)
        end  

    end

    def deep_dup(array)
        newArr = []
        
        #return element = array[0].to_s if array.length <= 1
        return array if !(array.is_a?(Array))

        array.each_with_index do |subarray, idx|

            newArr << deep_dup(subarray)

        end

        return newArr
    end

    def fibonacci(n) #n == 5
        return [0,1].take(n) if n < 3
        prev = fibonacci(n-1)
        prev << prev[-1] + prev[-2]    
    end
    #0, 1, 1, 2, 3, 5, 8, 13, 21
    # 

    def fibonacci2(n)
        return [] if n == 0
        return [0] if n == 1

        newArr = [0, 1]
        i = 0
        while newArr.length < n
            newArr << newArr[i] + newArr[i+1]
            i += 1
        end
        return newArr
    end

        def bsearch(array, n)
            #if middle element, return index of that,
            #elsif if its smaller than middle element, do binary search on that
            #else do binary search on the elements t the right of the middle
            mid = array.length /  2

            if array[mid] == n

                return mid

            elsif array[mid] > n
                bsearch(array[0...mid], n)  

            else
                bsearch(array[mid+1..-1], n) + mid + 1 
                #if you count it from mid instead of an index after, 
                #you can remove the + 1
            end
        end
    




end
