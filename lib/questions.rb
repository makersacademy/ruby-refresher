# keep only the elements that start with an a
def select_elements_starting_with_a(array)
  barray = []
  for i in (0...array.length)
    barray << (array[i]) if array[i][0, 1] == 'a'
  end
  return barray
end

# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
  barray = []
  for i in (0...array.length)
    barray << (array[i]) if (['a', 'e', 'i', 'o', 'u'].include?(array[i][0, 1]))
  end
  return barray
end

# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
  barray = []
  for i in (0...array.length)
    barray << (array[i]) if !array[i].nil?
  end
  return barray
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
  barray = []
  for i in (0...array.length)
    barray << (array[i]) if array[i]
  end
  return barray
end

# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
  for i in (0...array.length)
    array[i].reverse!
  end
  return array
end

# given an array of student names, like ['Bob', 'Dave', 'Clive']
# give every possible pairing - in this case:
# [['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']]
# make sure you don't have the same pairing twice,
def every_possible_pairing_of_students(array)
  barray = []
  for i in (0...array.length)
    for j in (0...array.length)
      barray << ([array[i], array[j]]) if (i != j && !barray.include?([array[j], array[i]]))
    end
  end
  return barray
end

# discard the first 3 elements of an array,
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3(array)
  i = 0
  while i < 3
    array.slice!(0)
    i += 1
  end
  return array
end

# add an element to the beginning of an array
def add_element_to_beginning_of_array(array, element)
  array.reverse!
  array << (element)
  array.reverse!
  return array
end

def reverse_words(a)
  for i in (0...a.length)
    a[i].reverse!
  end
end
# sort an array of words by their last letter, e.g.
# ['sky', 'puma', 'maker'] becomes ['puma', 'maker', 'sky']
def array_sort_by_last_letter_of_word(array)
  reverse_words(array)
  array.sort!
  reverse_words(array)
  return array
end

# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
  s = ''
  for i in (0...(string.length/2.0).ceil)
    s += string[i]
  end
  return s
end

# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
  number = -(number.abs)
end

# turn an array of numbers into two arrays of numbers, one an array of
# even numbers, the other an array of odd numbers
# even numbers come first
# so [1, 2, 3, 4, 5, 6] becomes [[2, 4, 6], [1, 3, 5]]
def separate_array_into_even_and_odd_numbers(array)
  b = []
  c = []
  for i in (0...array.length)
    if array[i]%2 == 0
      b << (array[i])
    else
      c << (array[i])
    end
  end
  return [b, c]
end

# count the numbers of elements in an element which are palindromes
# a palindrome is a word that's the same backwards as forward
# e.g. 'bob'. So in the array ['bob', 'radar', 'eat'], there
# are 2 palindromes (bob and radar), so the method should return 2
def number_of_elements_that_are_palindromes(array)
  i = 0
  j = 0
  while j < array.length
    i += 1 if array[j].reverse == array[j]
    j += 1
  end
  return i
end

# return the shortest word in an array
def shortest_word_in_array(array)
  min = array[0]
  array.each{|element| min = element if element.length < min.length}
  return min
end

# return the shortest word in an array
def longest_word_in_array(array)
  max = array[0]
  array.each{|element| max = element if element.length > max.length}
  return max
end

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
  total = 0
  array.each{|n| total += n}
  return total
end

# turn an array into itself repeated twice. So [1, 2, 3]
# becomes [1, 2, 3, 1, 2, 3]
def double_array(array)
  return array + array
end

# convert a symbol into a string
def turn_symbol_into_string(symbol)
  return symbol.to_s
end

# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 17
def average_of_array(array)
  return ((total_of_array(array))/array.length.to_f).round
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
  for i in (0...array.length)
    if array[i] > 5
      array = array[0...i] if array[i] > 5
      break
    end
  end
  return array
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash(array)
  hash = {}
  for i in (0...(array.length/2))
    hash[array[i*2]] = array[(i*2) + 1]
  end
  return hash
end

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
def get_all_letters_in_array_of_words(array)
  barray = []
  array.each{|word| barray = barray + word.split('')}
  barray.sort!
  return barray
end

# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}
def swap_keys_and_values_in_a_hash(hash)
  bash = {}
  hash.each do |key, value|
    bash[value] = key
  end
  return bash
end

# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6
def add_together_keys_and_values(hash)
  total = 0
  hash.each{|key, value| total += (key + value)}
  return total
end

# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
  s = ""
  for i in (0...string.length)
    x = string[i, 1]
    s += x if x.downcase == x
  end
  return s
end

# round up a float up and convert it to an Integer,
# so 3.214 becomes 4
def round_up_number(float)
  return float.ceil
end

# round down a float up and convert it to an Integer,
# so 9.52 becomes 9
def round_down_number(float)
  return float.floor
end

# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
  return date.strftime('%d/%m/%Y').to_s
end

# get the domain name *without* the .com part, from an email address
# so alex@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)
  a = email.split('@')
  b = a[1].split('.')
  return b[0]
end

# capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
  array = string.split(' ')
  array.each{|word| word.capitalize! if !['a', 'and', 'the'].include?(word)}
  array[0].capitalize!
  s = ""
  array.each{|word| s += (word + " ")}
  return s[0...s.length-1]
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
  for i in (0...string.length)
    return true if !(('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a).include?(string[i])
  end
  return false
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
  return range.last
end

# should return true for a 3 dot range like 1...20, false for a
# normal 2 dot range
def is_a_3_dot_range?(range)
  return true if range.last != range.max
  return false if range.last == range.max
end

# get the square root of a number
def square_root_of(number)
  return Math.sqrt(number)
end

# count the number of words in a file
def word_count_a_file(file_path)
  file = File.open(file_path, "r")
  contents = file.read
  array = contents.split(" ")
  return array.length
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
  array = ['26/12/2014', '25/12/2014', '25/08/2014', '26/05/2014', '05/05/2014', '21/04/2014', '18/04/2014', '01/01/2014']
  return true if array.include?(format_date_nicely(date))
  return false
end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)
  days = {"Saturday" => 6, "Sunday" => 5, "Monday" => 4, "Tuesday" => 3, "Wednesday" => 2, "Thursday" => 1}
  birthday_year = birthday.strftime("%Y").to_i
  day = birthday.strftime("%A").to_s
  array = []
  if day == 'Friday'
    return birthday_year
  else
    for i in (0...days[day])
      array << (birthday_year + i)
    end
    n = 0
    array.each{|year| n += 1 if year% 4 == 0}
    return birthday_year + days[day] + n
  end
end

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
  file = File.open(file_path, "r")
  contents = file.read
  array = contents.split(" ")
  carray = []
  array.each do |word|
    if ['.', ','].include?(word[word.length-1])
      carray << word[0,word.length-1]
    else
      carray << word
    end
  end
  barray = []
  carray.each{|word| barray << word.length}
  res = {}
  barray.uniq.each{|e| res[e]= barray.count(e)}
  return res
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
def ninety_nine_bugs_in_the_code
  puts 'Ninety nine little bugs in the code'
  puts 'Ninety nine little bugs'
  puts 'Take one down, patch it around'
  puts 'One hundred and seveneen little bugs in the code'
end
