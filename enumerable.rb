module Enumerable
    def my_each
       array.length.times do |i| 
        obtect=array[i]  
          yield (object)
       end
    end
    def my_each_with_index
      array.length.times do |i| 
        object=array[i]  
          yield (object, i)
       end
    end

    def my_select 

    end
 
end


my_each([1,3,4,5,6,7,8]) do |x|
  puts x
end