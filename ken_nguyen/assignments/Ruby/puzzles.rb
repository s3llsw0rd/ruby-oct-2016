#ruby puzzles

#question 1 Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (E.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)

# arr1 = [3,5,1,2,7,9,8,13,25,32]
# arr2 = []
# def one(arr)
#   puts arr.inject(0,:+)
#   arr.select { |e| e>10 }
# end
#
# puts one(arr1)


#question 2 Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.

# arr1 = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
#
# def two(arr)
#   puts arr.shuffle
#   arr.select { |e| e.length > 5 }
# end
#
# puts two(arr1)


#question 3 Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message

# def three
#   alphabet = ('a'..'z').to_a
#   alphabet.shuffle!
#   puts alphabet.last
#   puts ["a", "e", "i", "o", "u", "y"].include?(alphabet.first) ? "#{alphabet.first} - Wow, a vowel" : "#{alphabet.first}"
# end
#
# three


#question 4 Generate an array with 10 random numbers between 55-100

# def four
#   (1..10).map { [] << rand(55..100) }
# end
# #
# # puts four
#
#
# #question 5 Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the arrays. Next, display the minimum value in the array as well as the maximum value.
# def five
#   five = four.sort!
#   puts five, "-----", "min", five.first, '-----', "max", five.last
# end
#
# five


#question 6 Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)
def six
  (1..5).map { rand(2) == 1 ? (65+rand(26)).chr : (97+rand(26)).chr }.join
end

# six

#question 7 Generate an array with 10 random strings that are each 5 characters long
def seven
  (1..10).map { six }
end

puts seven
