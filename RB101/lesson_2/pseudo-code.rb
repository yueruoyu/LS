=begin
	
	*** a method that returns the sum of two integers ***

	START 
	SET results = number_1 + number_2
	Return results
	END

	*** a method that takes an array of strings, and returns a string that is all those strings concatenated together ***

	START
	WHILE a in the array
		SET combined_string =+ a
	END

	*** a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element. ***

	START
	WHILE a < array.size && a is odd
		SET returned_array =+ array [a]
	END

	*** a method that determines the index of the 3rd occurrence of a given character in a string. ***

	START
	SET count = 0 
	WHILE a < string.szie && count < 3 
		if string[a] = character 
			count =+ 1	
	return a 
	END
	
=end