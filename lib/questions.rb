# keep only the elements that start with an a
def select_elements_starting_with_a(array)
  words = []
  array.each{ |word| words << word if word[0] == "a"}
  words
end

# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
  words = []; vowels = "aeiou"
  array.each{ |word| words << word if vowels.include?(word[0]) }
  words
end

# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
  array - [nil]
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
  array - ([nil] + [false])
end

# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
  array.map{ |word| word.reverse }
end

# given an array of student names, like ['Bob', 'Dave', 'Clive']
# give every possible pairing - in this case:
# [['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']]
# make sure you don't have the same pairing twice,
def every_possible_pairing_of_students(array)
  pairings = []
  for i in 0...array.length - 1
    j = i+1
    until j == array.length
      pairings << [array[i],array[j]]
      j += 1
    end
  end
  pairings
end

# discard the first 3 elements of an array,
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3(array)
  array.slice(3..array.length)
end

# add an element to the beginning of an array
def add_element_to_beginning_of_array(array, element)
  array.unshift(element)
end

# sort an array of words by their last letter, e.g.
# ['sky', 'puma', 'maker'] becomes ['puma', 'maker', 'sky']
def array_sort_by_last_letter_of_word(array)
  for i in 0...array.length - 1
    array[i], array[i+1] = array[i+1], array[i] if array[i][-1] > array[i+1][-1]
  end
  array
end

# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
  length = (string.length.to_f / 2).ceil
  string.slice(0...length)
end

# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
  -number.abs
end

# turn an array of numbers into two arrays of numbers, one an array of
# even numbers, the other an array of odd numbers
# even numbers come first
# so [1, 2, 3, 4, 5, 6] becomes [[2, 4, 6], [1, 3, 5]]
def separate_array_into_even_and_odd_numbers(array)
  odds = [];  evens = []
  array.each{ |x| x.even? ? evens << x : odds << x }
  [evens, odds]
end

# count the numbers of elements in an element which are palindromes
# a palindrome is a word that's the same backwards as forward
# e.g. 'bob'. So in the array ['bob', 'radar', 'eat'], there
# are 2 palindromes (bob and radar), so the method should return 2
def number_of_elements_that_are_palindromes(array)
  count = 0
  array.each { |str| count += 1 if str == str.reverse }
  count
end

# return the shortest word in an array
def shortest_word_in_array(array)
  short = array[0]
  array.each{ |word| short = word if word.length < short.length }
  short
end

# return the longest word in an array
def longest_word_in_array(array)
  long = array[0]
  array.each{ |word| long = word if word.length > long.length }
  long
end

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
  sum = 0
  array.each { |x| sum += x }
  sum
end

# turn an array into itself repeated twice. So [1, 2, 3]
# becomes [1, 2, 3, 1, 2, 3]
def double_array(array)
  array * 2
end

# convert a symbol into a string
def turn_symbol_into_string(symbol)
  symbol.to_s
end

# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 17
def average_of_array(array)
  sum = 0
  array.each { |x| sum += x }
  (sum.to_f / array.length).round
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
  array_new = []
  for i in 0...array.length
    break if array[i] > 5
    array_new << array[i]
  end
  array_new
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
  Hash[*array]
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
  array.join.split("").uniq.sort
end

# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
  hash.invert
end

# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
  sum = 0
  hash.flatten.each{ |x| sum += x }
  sum
end

# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
  string = string.chars
  string.each.with_index{ |x,i|
     string.delete_at(i) if x == x.capitalize && x =~ /[A-Za-z]/
  }
  string.join
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
  "#{date.day}/#{date.month}/#{date.year}"
end

# get the domain name *without* the .com part, from an email address
# so alex@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
  start = email.index("@") + 1
  finish = email.index(".")
  email.slice(start...finish)
end

# capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
  non_cap = ['a', 'and', 'the']
  string[0] = string[0].capitalize

  string.split(" ").map{ |word|
    non_cap.include?(word) ? word : word.capitalize }.join(" ")
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
  string.chars.each{ |x| return true if x.match(/[^A-Za-z0-9]/) }
  return false
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
  range.to_a.max
end

# should return true for a 3 dot range like 1...20, false for a
# normal 2 dot range
def is_a_3_dot_range?(range)
  range.to_a.last != range.last
end

# get the square root of a number
def square_root_of(number)
  number ** 0.5
end

# count the number of words in a file
def word_count_a_file(file_path)
  counter = 0
  File.open(file_path, "r") do |file|
    while line = file.gets
      line.split(" ").each{ |word| counter += 1 }
    end
  end
  counter
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
  self.send(str_method)
end

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2014_bank_holiday?(date)
  days = [
    [1,1],
    [18,4],
    [21,4],
    [5,5],
    [26,5],
    [25,8],
    [25,12],
    [26,12]
  ]
  days.include?([date.day, date.month])
end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)
   until birthday.friday?
     birthday += (60 * 60 * 24 * 365) #this does not consider leap years!
   end
  birthday.year
end

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
  lengths = Hash.new { |length, count| length[count] = 0 }

  File.open(file_path, "r") do |file|
     while line = file.gets
       line.gsub(/[^A-Za-z0-9]/, " ").split(" ").each{ |word| lengths[word.length] += 1 }
     end
   end
  lengths
end

# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)
def fizzbuzz_without_modulo
  threes = 3;   fives = 5;   array = [*1..100]

  (1..100).each do |x|

    while threes <= x
      array[x-1] = "fizz" if x == threes
      threes += 3
    end

    while fives <= x
      if x == fives
        array[x-1] == "fizz" ? array[x-1] = "fizzbuzz" : array[x-1] = "buzz"
        break
      end
      fives += 5
    end
    
  end
  array
end

puts fizzbuzz_without_modulo
# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)
def ninety_nine_bottles_of_beer
end
