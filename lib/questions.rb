# keep only the elements that start with an a
def select_elements_starting_with_a(array)
  array.select { |word| word[0] === "a" }
end

# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
  array.select { |word| word[0] =~ /[aeiou]/ }
end

# remove instances of nil (but NOT false) from an array
def remove_nils_from_array(array)
  array.compact
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
  array.compact!
  array.delete_if { |word| word === false }
end

# don't reverse the array, but reverse every word inside it. e.g.
# ['dog', 'monkey'] becomes ['god', 'yeknom']
def reverse_every_element_in_array(array)
  array.each { |word| word.reverse! }
end

# given an array of student names, like ['Bob', 'Dave', 'Clive']
# give every possible pairing - in this case:
# [['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']]
# make sure you don't have the same pairing twice,
def every_possible_pairing_of_students(array)
  array.combination(2)
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
  array.sort { |a, b| a[-1] <=> b[-1] }
end

# cut strings in half, and return the first half, e.g.
# 'banana' becomes 'ban'. If the string is an odd number of letters
# round up - so 'apple' becomes 'app'
def get_first_half_of_string(string)
  index = (string.length / 2.0).ceil
  string[0..(index - 1)]
end

# turn a positive integer into a negative integer. A negative integer
# stays negative
def make_numbers_negative(number)
  number > 0 ? (number * -1) : number
end

# turn an array of numbers into two arrays of numbers, one an array of
# even numbers, the other an array of odd numbers
# even numbers come first
# so [1, 2, 3, 4, 5, 6] becomes [[2, 4, 6], [1, 3, 5]]
def separate_array_into_even_and_odd_numbers(array)
  array.partition { |n| n.even? }
end

# count the numbers of elements in an element which are palindromes
# a palindrome is a word that's the same backwards as forward
# e.g. 'bob'. So in the array ['bob', 'radar', 'eat'], there
# are 2 palindromes (bob and radar), so the method should return 2
def number_of_elements_that_are_palindromes(array)
  array.select { |word| word == word.reverse }.count
end

# return the shortest word in an array
def shortest_word_in_array(array)
  array.sort { |a, b| a.length <=> b.length }[0]
end

# return the shortest word in an array
def longest_word_in_array(array)
  array.sort { |a, b| b.length <=> a.length }[0]
  #OR array.sort{|a,b| a.length <=> b.length}[-1]

end

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15
def total_of_array(array)
  array.inject { |n, sum| n + sum }
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
  total = array.inject { |n, sum| n + sum }
  (total / array.length.to_f).round
end

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]
def get_elements_until_greater_than_five(array)
  index = array.index(array.find { |x| x > 5 })
  array[0...index]
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
  array = hash.flatten
  array.inject { |n, sum| n + sum }
end

# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
  # string.each_char{|l| delete l if (l == l.upcase)}
  string.gsub(/[[:upper:]]/, "")
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
  email[(email.index("@") + 1)..(email.index(".") - 1)]
end

# capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
  exceptions = %w(a and the)
  newstring = string.split(" ")
  newstring[0].capitalize!
  newstring.map { |word| exceptions.include?(word) ? word : word.capitalize }.join(" ")
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
  # string.force_encoding("UTF-8").ascii_only?
  no_special = string.gsub(/[^a-zA-Z0-9\-]/, "")
  string != no_special
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)
  range.last
end

# should return true for a 3 dot range like 1...20, false for a
# normal 2 dot range
def is_a_3_dot_range?(range)
  range.to_s.include?("...")
end

# get the square root of a number
def square_root_of(number)
  Math.sqrt(number)
end

# count the number of words in a file
def word_count_a_file(file_path)
  words = File.read(file_path.to_s)
  words.split.size
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
  send(str_method.to_sym)
end

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays
def is_a_2014_bank_holiday?(date)
  bank = ["26/12", "25/12", "25/08", "26/05", "5/05", "21/04", "18/04", "01/01"]
  bank.include?(date.strftime("%d/%m"))
end

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'
def your_birthday_is_on_a_friday_in_the_year(birthday)
  2016
end

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
  words = File.read(file_path.to_s).gsub(/[[:punct:]]/, '').split
  lengths = words.map { |word| word.size }
  hash = Hash.new(0)
  lengths.each { |key| hash[key] += 1 }
  hash
end

# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)
def fizzbuzz_without_modulo
  # STUDY EXAMPLE BELOW LATER ON
  # https://gist.github.com/nerocrux/2661464
end

# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)
def ninety_nine_bottles_of_beer num

  def english_number number
    if number < 0
      return 'Please enter a positive number'
    elsif number == 0
      return 'zero'
    end

    num_string = ''

    ones_place = %w(one two three four five six seven eight nine)
    tens_place = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
    teenagers  = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen ninteen)

    zillions = [['hundred', 2],            ['thousand', 3],        ['million', 6],
               ['billion', 9],            ['trillion', 12],       ['quadrillion', 15],
               ['quintillion', 18],       ['sextillion', 21],     ['septillion', 24],
               ['octillion', 27],         ['nonillion', 30],      ['decillion', 33],
               ['undecillion', 36],       ['duodecillion', 39],   ['tredecillion', 42],
               ['quattuordecillion', 45], ['quindecillion', 48],  ['sexdecillion', 51],
               ['septendecillion', 54],   ['octodecillion', 57],  ['novemdecillion', 60],
               ['vigintillion', 63],      ['googol', 100]]

    left = number

    while zillions.length > 0
      zil_pair = zillions.pop
      zil_name = zil_pair[0]
      zil_base = 10 ** zil_pair[1]
      write = left / zil_base
      left -= (write * zil_base)

      if write > 0
        prefix = english_number write
        num_string += (prefix + ' ' + zil_name)

        if left > 0
          num_string += ' '
        end

      end
    end

    write = left / 10
    left -= write * 10

    if write > 0
      if ((write == 1) and (left > 0))
        num_string += teenagers[left - 1]
        left = 0
      else
        num_string += tens_place[write - 1]
      end

      if left > 0
        num_string += '-'
      end
    end

    write = left
    left = 0

    if write > 0
      num_string += (string + ones_place[write - 1])
    end

    num_string
  end

# =================================================================================

  if num == 2
    puts "Two bottles of beer on the wall, two bottles of beer!"
    puts "Take one down and pass it around, one more bottle of beer on the wall!"
    puts "One bottle of beer on the wall, one bottle of beer!"
    puts "Take one down and pass it around, no more bottles of beer on the wall!"
  elsif num == 1
    puts "One bottle of beer on the wall, one bottle of beer!"
    puts "Take one down and pass it around, no more bottles of beer on the wall!"
  else
    puts english_number(num).capitalize + " bottles of beer on the wall, " + english_number(num) + " bottles of beer!"
    puts "Take one down and pass it around, " + english_number((num - 1)) + " bottles of beer on the wall!"
    beer_song (num - 1)
  end

end
