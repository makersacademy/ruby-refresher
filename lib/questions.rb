# keep only the elements that start with an a
def select_elements_starting_with_a(array)
  array.select { |e| e[0] == "a" }
end

# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
  a = %w(a e u i o)
  array.select { |e| a.include?e[0] }
end

# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
  # array.select {|e| !e.nil?}
  array.compact
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
  array.select {|e| !e.nil? && e != false}
end

# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
  b = []
  array.each {|x| b << x.reverse }
  b
end

# given an array of student names, like ['Bob', 'Dave', 'Clive']
# give every possible pairing - in this case:
# [['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']]
# make sure you don't have the same pairing twice,
def every_possible_pairing_of_students(array)
  array.combination(2).to_a
end

# discard the first 3 elements of an array,
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3(array)
  array.drop(3)
end

# add an element to the beginning of an array
def add_element_to_beginning_of_array(array, element)
  array.unshift(element)
end

# sort an array of words by their last letter, e.g.
# ['sky', 'puma', 'maker'] becomes ['puma', 'maker', 'sky']
def array_sort_by_last_letter_of_word(array)
  b = []
  d = []
  array.each {|x| b << x.reverse }
  c = b.sort
  c.each{|x| d << x.reverse }
  d
end

# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
  string.length % 2 == 0 ? a = ((((string.length/2).to_f).ceil) -1) : a = (((string.length/2).to_f).ceil)
  string[0..a]
end

# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
  (number>0)? (number * -1) : number
end

# turn an array of numbers into two arrays of numbers, one an array of
# even numbers, the other an array of odd numbers
# even numbers come first
# so [1, 2, 3, 4, 5, 6] becomes [[2, 4, 6], [1, 3, 5]]
def separate_array_into_even_and_odd_numbers(array)
  a = []
  a << array.select{ |e| e%2 == 0}
  a << array.select{ |e| e%2 != 0}
  a
end

# count the numbers of elements in an element which are palindromes
# a palindrome is a word that's the same backwards as forward
# e.g. 'bob'. So in the array ['bob', 'radar', 'eat'], there
# are 2 palindromes (bob and radar), so the method should return 2
def number_of_elements_that_are_palindromes(array)
  array.select! {|x| x.reverse == x}
  array.length
end

# return the shortest word in an array
def shortest_word_in_array(array)
  a = array.sort_by {|x| x.length}
  a.first
end

# return the shortest word in an array
def longest_word_in_array(array)
  a = array.sort_by {|x| x.length}
  a.last
end

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
  array.inject(:+)
end

# turn an array into itself repeated twice. So [1, 2, 3]
# becomes [1, 2, 3, 1, 2, 3]
def double_array(array)
  array + array
end

# convert a symbol into a string
def turn_symbol_into_string(symbol)
  symbol.to_s
end

# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 17
def average_of_array(array)
  a = (array.inject(:+))/(array.length).to_f
  a % 2 == 0 ? a : a.ceil
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
    c = array.find_index {|x| x > 5}
    array[0...c]
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
  Hash[*array]
  # b = array.select!{|x| x.each_with_index { |y, index| index%2 == 0}}
  # array.each{|x, y| x => y}
  # self.each_with_object({}){|(k,v),o|(o[v]||=[])<<k}
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
  b = array.join
  c = b.split("")
  c.sort
end

# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
  # hash.collect{|x, y| x = y, y = x}
  hash.invert
end

# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
  hash.flatten.inject(:+)
end

# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
  a = string.split("")
  c = a.select { |x| x == x.downcase }
  c.join("")
end

# round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
  float.ceil
end

# round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
  float.floor
end

# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
  date.strftime('%d/%m/%Y')
end

# get the domain name *without* the .com part, from an email address
# so alex@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
  e = email.split("")
  a = e.find_index{|x| x == "@"}
  b = e.find_index{|x| x == "."}
  email[a+1..b-1]
end

# capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
  b = string.split(" ")
  c = b.each{|x| x.capitalize}
  c.each{|x| x == "and" || x == "a"}
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
  string =~ /[a-zA-Z0-9]/
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
  range.last
end

# should return true for a 3 dot range like 1...20, false for a
# normal 2 dot range
def is_a_3_dot_range?(range)
  range.count == (range.last - range.first)
end

# get the square root of a number
def square_root_of(number)
  Math.sqrt(number)
end

# count the number of words in a file
def word_count_a_file(file_path)
  f = File.open(file_path)
  content = f.read
  content.split(" ").count
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
  self.str
end

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2014_bank_holiday?(date)
  # 26 December	Friday	Boxing Day
  # 25 December	Thursday	Christmas Day
  # 25 August	Monday	Summer bank holiday
  # 26 May	Monday	Spring bank holiday
  # 5 May	Monday	Early May bank holiday
  # 21 April	Monday	Easter Monday
  # 18 April	Friday	Good Friday
  # 1 January	Wednesday	New Year’s Day
end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)

end

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
  f = File.open(file_path)
  content = f.read
  c = content.split(" ")
  d = c.map{|x| x.length}.sort
  d.each_with_object(Hash.new(0)) { |o, h| h[o] += 1 }
end

# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)
def fizzbuzz_without_modulo
end

# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)
def ninety_nine_bottles_of_beer
end
