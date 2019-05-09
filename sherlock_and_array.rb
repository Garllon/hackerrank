def balancedSums(arr)
    arr = arr.reject(&:zero?)
    return 'YES' if arr.length == 1

    left_sum = 0
    right_sum = arr.inject(:+)

    arr.each do |val|      
      right_sum -= val

      return 'YES' if left_sum == right_sum
      break if right_sum < left_sum
        
      left_sum += val
    end
    
    return 'NO'
end
