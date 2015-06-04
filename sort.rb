def sort(array)
  array = array.clone
  if array.length <= 1
    return array
  else
    mid = array.length/2
    merge(mergeSort(array.slice(0,mid)), mergeSort(array.slice(mid,array.length)))
  end
end


def merge(left, right)
  left_index = 0
  right_index = 0
  index = 0
  output = []
  while left_index < left.length and right_index < right.length do
    if right[right_index] < left[left_index]
      output[index] = right[right_index]
      right_index += 1
    else
      output[index] = left[left_index]
      left_index += 1
    end
    index += 1
  end
  while left_index < left.length do
    output[index] = left[left_index]
    left_index += 1
    index += 1
  end
  while right_index < right.length do
    output[index] = right[right_index]
    right_index += 1
    index += 1
  end
  output
end
