module Enumerable
    
    def my_each(array)
        i = 0
        while i < array.length
            yield(array[i])
            i+=1
        end
        return array
    end


    def my_each_with_index(array)
        i = 0
        while i < array.length

            yield(array[i],i)
            i+=1
        end
        return array
    end

    def my_select(array)
        i = 0
        new_array = []
        while i < array.length
            new_array << yield(array[i])
            i+=1
        end
        return new_array
    end

    def my_all?(array)
        i = 0
        while i < array.length
            if yield(array[i]) == false
                return false
            end
            i+=1
        end
        return true
    end

    def my_any?(array)
        i = 0
        while i < array.length
            if yield(array[i]) == true
                return true
            end
            i+=1
        end
        return false
    end

    def my_none?(array)
        i = 0
        while i < array.length
            if yield(array[i]) == true
                return false
            end
            i+=1
        end
        return true
    end

    def my_count(array)
        i = 0
        count = 0
        while i < array.length
            if yield(array[i]) == true
                count += 1
            end
            i+=1
        end
        return count
    end

    def my_map(array)
        i = 0
        new_array = []

        my_proc = Proc.new { |arg1| arg1 * 2 }

        while i < array.length
            new_array << my_proc.call(array[i])
            i+=1
        end
        return new_array
    end

    def my_inject(array)
        i = 0
        memo = 0
        count = 0
        
        while i < array.length
            if i == 0
                memo = array[i]
            else
                count += yield(array[i], memo)
                memo = count
            end
            i+=1
            count = 0
        end
        return memo
    end
end

def multiply_els(array)
    array.my_inject(array) {|num, sum| sum * num}
end

def map_els(array)
    array.my_map(array)
end

print map_els([5,6,7,8,9,10])
