def run #7.5 =
  arr = [93, 2, 47, 1, 902] # 1.1 + 0.25 + 0.25 + 0.25 + 0.25 + 0.25
  puts merge_sort(arr, 0 , arr.length - 1) # 1.1 + 1.3 +  0.25 + 0.25 + 1.7 + 1.5
end

def merge_sort(arr, left, right) # 8.9 =
  return if left >= right # 1.1 + 1.1
  middle = (left + right) / 2 # 1.1 + 1.3 + 1.1 + 0.7
  merge_sort(arr, left, middle) # 0.6
  merge_sort(arr, middle + 1, right) # 0.6 + 1.3
  merge(arr, middle, left, right) # 1.1
  arr
end

def merge(arr, middle, left, right) # 42.6 =
  leftArr = arr[(left)..(middle)] # 1.3 + 0.9
  rightArr = arr[(middle + 1)..(right)] # 1.3 + 1.3 + 0.9 + 0.3
  i = j = 0 # 1.3 + 1.3 + 0.3
  k = left # 1.3

  while i < leftArr.length && j < rightArr.length # 1.2 + 1.2 + 1.1 + 1.4 + 1.4
    if leftArr[i] < rightArr[j] # 0.9 + 0.9 + 1.2 + 1.1
      arr[k] = leftArr[i] # 1.3 + 0.9 + 0.9
      i = i + 1 # 1.3 + 1.5 + 0.3
    else # 1.1
      arr[k] = rightArr[j] # 1.3 + 0.9 + 0.9
      j = j + 1 # 1.3 + 1.5 + 0.3
    end
    k = k + 1 # 1.3 + 1.5 + 0.3
  end

  while i < leftArr.length # 1.2 + 1.1 + 1.4
    arr[k] = leftArr[i] # 1.3 + 0.9 + 0.9
    i = i + 1 # 1.3 + 1.5 + 0.3
    k = k + 1 # 1.3 + 1.5 + 0.3
  end

  while j < rightArr.length # 1.2 + 1.1 + 1.4
    arr[k] = rightArr[j] # 1.3 + 0.9 + 0.9
    j = j + 1 # 1.3 + 1.5 + 0.3
    k = k + 1 # 1.3 + 1.5 + 0.3
  end

end