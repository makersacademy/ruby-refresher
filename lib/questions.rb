# No. 1
# keep only the elements that start with an a
def select_elements_starting_with_a(array)
  array.delete_if { |x| !x.start_with?('a') }
end

# No. 2
# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
  array.delete_if { |x| !x[0].match(/[aeoui]/) }
end

# No. 3
# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
  array.delete_if { |x| x == nil }
end

# No. 4
# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
  array.delete_if { |x| x == nil || x == false }
end

# No. 5
# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
  array.collect { |x| x.reverse! }
end

# No. 6
# given an array of student names, like ['Bob', 'Dave', 'Clive']
# give every possible pairing - in this case:
# [['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']]
# make sure you don't have the same pairing twice,
def every_possible_pairing_of_students(array)
  array.combination(2).to_a
end

# No. 7
# discard the first 3 elements of an array,
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3(array)
  array.drop(3).collect { |x| x }
end

# No. 8
# add an element to the beginning of an array
def add_element_to_beginning_of_array(array, element)
  array.unshift(element)
end

# No. 9
# sort an array of words by their last letter, e.g.
# ['sky', 'puma', 'maker'] becomes ['puma', 'maker', 'sky']
def array_sort_by_last_letter_of_word(array)
  array.sort_by { |x| x[-1] }
end

# No. 10
# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
  string.length.even? ? (string[0..string.length/2-1]) : (string[0..string.length/2])
end

# No. 11
# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
  -(number.abs)
end

# No. 12
# turn an array of numbers into two arrays of numbers, one an array of
# even numbers, the other an array of odd numbers
# even numbers come first
# so [1, 2, 3, 4, 5, 6] becomes [[2, 4, 6], [1, 3, 5]]
def separate_array_into_even_and_odd_numbers(array)
  result = [[],[]]
  array.each { |x| x.even? ? (result[0].push(x)) : (result[1].push(x)) }
  result
end

# No. 13
# count the numbers of elements in an element which are palindromes
# a palindrome is a word that's the same backwards as forward
# e.g. 'bob'. So in the array ['bob', 'radar', 'eat'], there
# are 2 palindromes (bob and radar), so the method should return 2
def number_of_elements_that_are_palindromes(array)
  array.delete_if { |x| x != x.reverse }.length
end

# No. 14
# return the shortest word in an array
def shortest_word_in_array(array)
  array.sort_by { |x| x.length }.first
end

# No. 15
# return the shortest word in an array
def longest_word_in_array(array)
  array.sort_by { |x| x.length }.last
end

# No. 16
# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
  array.inject(0){ |sum, x| sum + x }
end

# No. 17
# turn an array into itself repeated twice. So [1, 2, 3]
# becomes [1, 2, 3, 1, 2, 3]
def double_array(array)
  array + array
end

# No. 18
# convert a symbol into a string
def turn_symbol_into_string(symbol)
  symbol.to_s
end

# No. 19
# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 17
def average_of_array(array)
  sum = array.inject(0){ |sum, x| sum + x }
  length = array.length
  (sum.to_f/length.to_f).round
end

# No. 20
# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
  result = []
  array.each { |x| break if (x > 5); result.push(x) }
  result
end

# No. 21
# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
  Hash[*array]
end

# No. 22
# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
  array.reduce(:concat).chars.uniq.sort
end

# No. 23
# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
  hash.invert
end

# No. 24
# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
  hash.keys.map.reduce(:+) + hash.values.map.reduce(:+)
end

# No. 25
# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
  string.chars.delete_if { |x| x =~ /[[:alpha:]]/ && x == x.capitalize }.join
end

# No. 26
# round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
  (float + 0.5).round
end

# No. 27
# round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
  (float - 0.5).round
end

# No. 28
# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
  date.strftime("%d/%m/%Y")
end

# No. 29
# get the domain name *without* the .com part, from an email address
# so alex@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
  result = []; write = false
  email.chars.each { |x|
    write = !write if x == "." || x == "@"
    result.push(x) if write
  }
  result.drop(1).join
end

# No. 30
# capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
  exceptions = ['a', 'and', 'the']
  string.split.each_with_index.collect { |x, i|
    exceptions.include?(x) && i != 0 ? x : x.capitalize!
  }.join(' ')
end

# No. 31
# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
  string.match(/^[0-9a-zA-Z]*$/) == nil ? true : false
end

# No. 32
# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
  !(range === range.last) ? (range.last - 1) : (range.last)
end

# No. 33
# should return true for a 3 dot range like 1...20, false for a
# normal 2 dot range
def is_a_3_dot_range?(range)
  !(range === range.last)
end

# No. 34
# get the square root of a number
def square_root_of(number)
  Math.sqrt(number)
end

# No. 35
# count the number of words in a file
def word_count_a_file(file_path)
  file = File.open(file_path, 'r')
  word_count = 0
  file.each_line { |line| line.split.each { |word| word_count += 1 } }
  word_count
end

# --------- tougher ones ---------

# No. 36
# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
  send(str_method)
end

# No. 37
# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2014_bank_holiday?(date)
  bank_holidays = ["2014/12/26", "2014/12/25", "2014/08/25", "2014/05/26",
                   "2014/05/05", "2014/04/21", "2014/04/18", "2014/01/01"]
  bank_holidays.include?(date.strftime("%Y/%m/%d"))
end

# No. 38
# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)
end

# No. 39
# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
end

# --------- no tests ---------

# No. 40
# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)
def fizzbuzz_without_modulo
end

# No. 41
# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)
def ninety_nine_bottles_of_beer
end
