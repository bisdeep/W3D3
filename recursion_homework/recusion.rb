
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

end
