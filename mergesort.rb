def merge_sort(arr)
	return arr if arr.length < 2
	half = arr.length / 2
	left_half = merge_sort(arr[0..half-1])
	right_half = merge_sort(arr[half..-1])
	final = []
	while left_half.length > 0 && right_half.length > 0
		if left_half[0] < right_half[0]
			final << left_half.shift
		else
			final << right_half.shift
		end
	end
	return final + left_half + right_half
end

#puts merge_sort([2,9,5,8])
puts merge_sort([18,2,4,8,9])