require 'nokogiri'
require 'open-uri'
require 'date'

# keep only the elements that start with an a
def select_elements_starting_with_a(array)
  array.select{|n| n[0] == 'a'}
end

# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
  array.select{|n| ['a','e','i','o','u'].include?(n[0])}
end

# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
  array.compact
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
  array.reject{|n| n == false || n == nil }
end

# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
  array.map(&:reverse)
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
  array.sort_by { |x| x[-1] }

end

# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
  x = string.chars.size / 2
  string.chars.reverse.drop(x).reverse.join
end

# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
  number > 0 ? number = number - (number * 2) : number
end

# turn an array of numbers into two arrays of numbers, one an array of
# even numbers, the other an array of odd numbers
# even numbers come first
# so [1, 2, 3, 4, 5, 6] becomes [[2, 4, 6], [1, 3, 5]]
def separate_array_into_even_and_odd_numbers(array)
  arr1, arr2 = [], []
  array.each{|n| n.odd? ? arr1 << n : arr2 << n}
  [arr2, arr1]
end

# count the numbers of elements in an element which are palindromes
# a palindrome is a word that's the same backwards as forward
# e.g. 'bob'. So in the array ['bob', 'radar', 'eat'], there
# are 2 palindromes (bob and radar), so the method should return 2
def number_of_elements_that_are_palindromes(array)
  n = 0;
  array.each{|x| n += 1 if x == x.reverse}
  n;
end

# return the shortest word in an array
def shortest_word_in_array(array)
  array.min{ |x,y| x.size <=> y.size }
end

# return the shortest word in an array
def longest_word_in_array(array)
  array.max{ |x,y| x.size <=> y.size }
end

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
  array.reduce(:+)
end

# turn an array into itself repeated twice. So [1, 2, 3]
# becomes [1, 2, 3, 1, 2, 3]
def double_array(array)
  (array * 2).flatten
end

# convert a symbol into a string
def turn_symbol_into_string(symbol)
  symbol.to_s
end

# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 17
def average_of_array(array)
  (array.reduce(:+) / array.size.to_f).round
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
  array.take_while{|n| n <= 5}
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
    nu_arr = array.each_slice(2).to_a
    nu_arr.to_h
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
  array.join.chars.sort
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
  ((hash.keys) + (hash.values)).reduce(:+)
end

# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
  string.gsub(/[A-Z]/, '')
end

# round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
  float.ceil.to_i
end

# round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
    float.floor.to_i
end

# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
  "#{date.day}/#{date.month}/#{date.year}"
end

# get the domain name *without* the .com part, from an email address
# so alex@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
  start = email=~/@/
  email.slice(start+1...email=~/[.]/)
end

# capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
    str1 = string.capitalize.split
    str1.map!{|x| ['a', 'and', 'the'].include?(x) ? x : x.capitalize}
    str1.join(' ')
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
  string.match(/\W/) ? true : false
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
  range.max
end

# should return true for a 3 dot range like 1...20, false for a
# normal 2 dot range
def is_a_3_dot_range?(range)
  range.include?(range.last) ? false : true
end

# get the square root of a number
def square_root_of(number)
  Math.sqrt(number)
end

# count the number of words in a file
def word_count_a_file(file_path)
  (File.open(file_path, "r")).each do |line|
    return line.split.size
  end
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
  prc = Proc.new { [0].str_method }
  prc.call
end

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2014_bank_holiday?(date)

end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)
  time = birthday
  today = time.wday
  year_given = birthday.year.to_i
  day_desired = DateTime.parse("Friday").wday
  today < day_desired ? day_diff = (day_desired - today) : day_diff = (7 - today + day_desired)
  target_year = year_given + day_diff
  increment_year(year_given, target_year)
end

def increment_year(year_given, target_year)
  until year_given >= target_year
    year_given += 1 if is_leap_year?(year_given)
    year_given += 1
  end
  target_year = year_given
end

def is_leap_year?(year_given)
  (year_given % 4 == 0) && (year_given % 100 != 0)
end



# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
  n, hsh = 0, Hash.new(0);
  (File.open(file_path, "r")).each do |line|
    line.split.each do |word|
      hsh[sz = word.sub(/\W/, '').size] += 1
    end
  end
  hsh;
end

# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)
def fizzbuzz_without_modulo(n)
  x = ''
  x += 'Fizz' if 3 * (n / 3) == n
  x += 'Buzz' if 5 * (n / 5) == n
  x.empty? ? n : x
end

# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)
def ninety_nine_bottles_of_beer
  num, bottle = 100, 'bottles';
   while num > 1
 	  num -= 1;
 	  num2, bottle2 = num - 1, bottle;
 		(num2 = 'no more') && (bottle = 'bottle') if num == 1;
 		num == 2 ? bottle2 = 'bottle' : bottle2 = 'bottles'
 		puts "#{num} #{bottle} of beer on the wall, #{num} #{bottle} of beer. Take one down, pass it around, #{num2} #{bottle2} of beer on the wall."
   end
end

ninety_nine_bottles_of_beer();
