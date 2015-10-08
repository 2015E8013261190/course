# When done, submit this entire file.


# Part 1


def sum arr
	# YOUR CODE HERE

	ans = 0;
	i = 0;

	for i in 0...arr.length
		ans += arr[i];
	end
	
	return ans;

end


def max_2_sum arr
	# YOUR CODE HERE

	length=arr.length;

	if length == 0
		return 0;
	end

	if length == 1;
		return arr[0];
	end

	max1 = arr[0];
	max2 = arr[1];

	if max1 < max2
		max1,max2 = max2,max1;
	end

	i = 2;

	for i in 2...length
		if arr[i]<max2
			next;
		elsif arr[i] >= max2 && arr[i] < max1
			max2 = arr[i];
		else
			max1,max2 = arr[i],max1;
		end
	end

	return max1+max2;
	
end


def sum_to_n? arr, n
	# YOUR CODE HERE

	length = arr.length;

	if length == 0;
		return false;
	end
	
	left = 0;
	i = 0;
	j = 0;

	for i in 0...length
		left = n - arr[i];
		
		for j in 0...length
			if j == i
				next;
			end
			if arr[j] == left
				return true;
			end
		end

	end

	return false;
	
end



# Part 2


def hello(name)
	# YOUR CODE HERE
	
	return "Hello, " + name;

end


def starts_with_consonant? s
	# YOUR CODE HERE

	a = s[0];

	case a

		when 'A','E','I','O','U','a','e','i','o','u'
			return false;
		when 'A'..'Z','a'..'z'
			return true;
		else
			return false;
	end

end


def binary_multiple_of_4? s
	# YOUR CODE HERE

	length = s.length;
	if(length == 1 && s[0] == '0')
		return true;
	end

	if(length < 2)
		return false;
	end

	if !(s[length-2] == '0' && s[length-1] == '0')
		return false;
	end

	i = 0;

	for i in 0..length-3
		if !(s[i] == '0' || s[i] == '1')
			return false;
		end
	end

	return true;

end



# Part 3


class BookInStock
	# YOUR CODE HERE

	def initialize(isbn,price)

		@isbn = isbn

		@price = price

		raise ArgumentError if (isbn.length == 0 ||price <= 0)

	end

	def isbn

		return @isbn;

	end

	def price

		return @price;

	end

	def isbn= new_isbn

		@isbn = new_isbn;

	end

	def price= new_price

		@price = new_price;

	end

	def price_as_string

		return "$"+format("%.2f",@price);

	end

end



