module Enumerable
    def my_each
      index = 0
      while index < self.length
        yield(self[index])
        index += 1
      end
    end
    def my_each_with_index
      index = 0
      while index < self.length
        yield(self[index], index)
        index += 1
      end
          
    end

    def my_select 
      index=0
      while index < self.length
         yield(self[index])
         index += 1
      end
    end

    def my_all? 
      all = false
      self.my_each {|x| yield(x) ? all = true : all = false }
      all
    end

    def my_any?
      any = false
      self.my_each {|x| any = true if yield(x)}
      any

    end
    def my_none?
      none = true
      self.my_each {|x| none = false if yield(x)}
      none

    end

    def my_count
      counter = 0
      if number
        self.my_each {|x| counter += 1 if x == number}
      elsif block_given?
        self.my_each {|x| counter += 1 if yield(x)}
      else
        counter = self.length
      end 
 
      counter

    end

    def my_map

    end
    
    def my_inject

    end
end


array = [88,21,78,22,3,4]
#array.my_each {|num| puts num*2}

#array.my_each_with_index { |val,index| puts "index: #{index} for #{val}" if val > 30}

#array.select { |n| puts n.even? }
#array.my_select { |n| puts n.even? }

#puts array.all?{|x| x>3 }
#puts array.all? (Numeric) 

#puts array.my_all? {|x| x>2 }
#puts array.my_all? {|x| x<89 }
#puts [nil, true, 99].my_all?

#puts array.my_any? {|x| x>88 }

#puts array.none? {|x| x>88 }
#puts array.my_none? {|x| x>88 }

puts array.count {|num| num }