def fib(n)
	return 0 if n == 0
	num1 = 0
	num2 = 1
	n.times do 
		num1, num2 = num2, (num1 + num2)
	end
	num1
end

puts fib(8)


def fib_rec(n)
	return n if n == 0
	return n if n == 1
	return fib_rec(n-1) + fib_rec(n-2)
end

puts fib(8)