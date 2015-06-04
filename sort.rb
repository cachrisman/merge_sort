def sort(arr)
  if arr.length === 0
    return []
  end
end


def merge(lf, rt)
  l_index = 0
  r_index = 0
  index = 0
  result = Array.new(lf.length + rt.length) 

  remaining = nil
  rem_index = nil

  while l_index < lf.length && r_index < rt.length
    l_val = lf[l_index]
    r_val = rt[r_index]

    if l_val < r_val
      result[index] = l_val
      l_index = l_index + 1
    else
      result[index] = r_val
      r_index = r_index + 1
    end

    index = index + 1
  end
  
  if l_index < lf.length
    remaining = lf
    rem_index = l_index
  else
    remaining = rt
    rem_index = r_index
  end

  while (rem_index < remaining.length)
    result[index] = remaining[rem_index]
    rem_index = rem_index + 1
    index = index + 1 
  end

  return result
end







