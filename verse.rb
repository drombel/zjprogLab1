# 7.5 =
def run
  arr = [93, 2, 47, 1, 902] # 1.1 + 0.25 + 0.25 + 0.25 + 0.25 + 0.25
  puts merge_sort(arr, 0, arr.length - 1) # 1.1 + 1.3 + 0.25 + 0.25 + 1.7 + 1.5
end

# 8.9 =
def merge_sort(arr, left, right)
  return if left >= right # 1.1 + 1.1

  middle = (left + right) / 2 # 1.1 + 1.3 + 1.1 + 0.7
  merge_sort(arr, left, middle) # 0.6
  merge_sort(arr, middle + 1, right) # 0.6 + 1.3
  merge(arr, middle, left, right) # 1.1
  arr
end

# 42.6 =
def merge(arr, middle, left, right)
  left_arr = arr[(left)..(middle)] # 1.3 + 0.9
  right_arr = arr[(middle + 1)..(right)] # 1.3 + 1.3 + 0.9 + 0.3
  i = j = 0 # 1.3 + 1.3 + 0.3
  k = left # 1.3

  while i < left_arr.length && j < right_arr.length
    # 1.2 + 1.2 + 1.1 + 1.4 + 1.4
    if left_arr[i] < right_arr[j] # 0.9 + 0.9 + 1.2 + 1.1
      arr[k] = left_arr[i] # 1.3 + 0.9 + 0.9
      i += 1 # 1.3 + 1.5 + 0.3
    else # 1.1
      arr[k] = right_arr[j] # 1.3 + 0.9 + 0.9
      j += 1 # 1.3 + 1.5 + 0.3
    end
    k += 1 # 1.3 + 1.5 + 0.3
  end

  while i < left_arr.length # 1.2 + 1.1 + 1.4
    arr[k] = left_arr[i] # 1.3 + 0.9 + 0.9
    i += 1 # 1.3 + 1.5 + 0.3
    k += 1 # 1.3 + 1.5 + 0.3
  end

  while j < right_arr.length # 1.2 + 1.1 + 1.4
    arr[k] = right_arr[j] # 1.3 + 0.9 + 0.9
    j += 1 # 1.3 + 1.5 + 0.3
    k += 1 # 1.3 + 1.5 + 0.3
  end
end
