# keep only the elements that start with an a
def select_elements_starting_with_a(array)
  array.delete_if { |element| element[0] != "a" }
end

# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
  array.select { |element| "aeiou".include?(element[0]) }
end

# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
  array.compact
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
  array.select { |element| !!element == true }
end

# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
  array.map { |element| element.reverse}
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
  array.slice(3,array.length)
end

# add an element to the beginning of an array
def add_element_to_beginning_of_array(array, element)
  array.unshift(element)
end

# sort an array of words by their last letter, e.g.
# ['sky', 'puma', 'maker'] becomes ['puma', 'maker', 'sky']
def array_sort_by_last_letter_of_word(array)
  array.sort_by { |word| word[-1] }
end

# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
  return string[0,(string.length/2) + 1] if string.length % 2 == 1
  return string[0,(string.length/2)]
end

# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
  return -number if number > 0
  return number
end

# turn an array of numbers into two arrays of numbers, one an array of
# even numbers, the other an array of odd numbers
# even numbers come first
# so [1, 2, 3, 4, 5, 6] becomes [[2, 4, 6], [1, 3, 5]]
def separate_array_into_even_and_odd_numbers(array)
  array.partition {|number| number % 2 == 0 }
end

# count the numbers of elements in an element which are palindromes
# a palindrome is a word that's the same backwards as forward
# e.g. 'bob'. So in the array ['bob', 'radar', 'eat'], there
# are 2 palindromes (bob and radar), so the method should return 2
def number_of_elements_that_are_palindromes(array)
  count = 0
  array.each { |word| count += 1 if (word == word.reverse) }
  count
end

# return the shortest word in an array
def shortest_word_in_array(array)
  array.sort_by! { |word| word.length}
  array.shift
end

# return the shortest word in an array
def longest_word_in_array(array)
  array.sort_by! { |word| word.length }
  array.pop
end

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
  array.inject(0) { |sum, element| sum + element }
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
  total = array.inject(0) { |sum, element| sum + element }
  (total.to_f / array.length).round
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
  index_first_num_greater_than_five = array.index {|number| number > 5 }
  array[0,index_first_num_greater_than_five]
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
  keys = array.select { |letter| array.index(letter) % 2 == 0 }
  values = array.select { |letter| array.index(letter) % 2 == 1 }
  Hash[keys.zip(values)]
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
  array.join.split("").sort
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
  sum_of_keys = hash.keys.inject(0) { |sum, key| sum + key }
  sum_of_values = hash.values.inject(0) { |sum, value| sum + value }
  sum_of_keys + sum_of_values
end

# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
  string.gsub(/[A-Z]/, "")
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
  date.strftime("%d/%m/%Y")
end

# get the domain name *without* the .com part, from an email address
# so alex@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
  email.split("@").last.split(".com").first
end

# capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
  words_to_ignore = ["a", "and", "the"]
  capitalized_string = string.split(" ").each do |word|
    word.capitalize! if !words_to_ignore.include?(word)
  end
  capitalize_first_letter(capitalized_string.join(" "))
end

def capitalize_first_letter(string)
  string[0] = string[0].upcase!
  string
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
  string[/[a-zA-Z0-9]+/] != string
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
  range.last
end

# should return true for a 3 dot range like 1...20, false for a
# normal 2 dot range
def is_a_3_dot_range?(range)
  range.exclude_end?
end

# get the square root of a number
def square_root_of(number)
  Math.sqrt(number)
end

# count the number of words in a file
def word_count_a_file(file_path)
  array_of_lines = []
  file = File.open(file_path, 'r')
  file.each {|line| array_of_lines << line}
  array_of_lines.join(" ").split(" ").count
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
  self.str_method
end

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2014_bank_holiday?(date)
  bank_holidays = ["26/12", "25/12", "25/08", "26/05",
                  "05/05", "21/04", "18/04", "01/01"]
  bank_holidays.include?(date.strftime("%d/%m"))
end

# Instructions:
# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'

def birthday_in_jan_or_feb?(month_of_birthday)
  return true if month_of_birthday == "January" || month_of_birthday == "February"
  return false
end

# Based on the Rspec test, it seems that by "this year", the instructions mean 2013
def your_birthday_is_on_a_friday_in_the_year(birthday)
  day_of_bday_this_year = birthday.strftime("%A")
  month_of_birthday = birthday.strftime("%B")
  case day_of_bday_this_year
  when "Friday"
    return 2013
  when "Saturday"
    return 2018
  when "Sunday"
    return 2017
  when "Monday"
    return 2022 if birthday_in_jan_or_feb?(month_of_birthday)
    return 2016
  when "Tuesday"
    return 2016 if birthday_in_jan_or_feb?(month_of_birthday)
    return 2021
  when "Wednesday"
    return 2015
  when "Thursday"
    return 2014
  end
end

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}

def count_words_of_each_length_in_a_file(file_path)
  word_frequencies = Hash.new(0)
  array_of_words = File.read(file_path).gsub(/[^a-zA-Z\s]/, "").split
  array_of_lengths = array_of_words.map {|word| word.length}
  array_of_lengths.each {|length| word_frequencies[length] += 1 }
  word_frequencies
end

# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)
def fizzbuzz_without_modulo(n)
  fizzbuzz = [0,15,30,45,60,75,90]
  buzz = [5,10,20,25,35,40,50,55,65,70,80,85,95]
  fizz = [3,6,9,12,18,21,24,27,33,36,39,42,48,51,54,57,63,66,69,72,78,81,
          84,87,93,96,99]
  return "fizzbuzz" if fizzbuzz.include?(n)
  return "buzz" if buzz.include?(n)
  return "fizz" if fizz.include?(n)
  return n
end

# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)

def print_verse(bottles)
  if bottles > 1
    puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
    puts " Take one down and pass it around, #{bottles - 1} bottles of beer on the wall."
  else
    puts "1 bottle of beer on the wall, 1 bottle of beer."
    puts "Take one down and pass it around, no more bottles of beer on the wall."
  end
end

def ninety_nine_bottles_of_beer
  bottles = 99
  while bottles > 0
    print_verse(bottles)
    bottles -= 1
  end
end
