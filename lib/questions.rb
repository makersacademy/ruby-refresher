def select_elements_starting_with_a(array)
  array.select { |w|
    if w[0] == "a"
      w
    end}
end

# keep only the elements that start with a vowel
def select_elements_starting_with_vowel(array)
  # array.select! { |w|
  # if w[0] == "a" || "o" || "i"
  #   w
  # end}
  # array.each do |w|
  #   if w[0] == "a"
  #     p w[0]
  #     array.push(w)
  #     # p array.select { w }
  #   end
  #   # p array
  # end
  p array
end

def remove_nils_from_array(array)
  array.each do |item|
    if item == nil
      array.delete(item)
    end
  end
end

# remove instances of nil AND false from an array
def remove_nils_and_false_from_array(array)
  array.each do |item|
    if item == false
      array.delete(item)
    end
  end

  array.each do | item |
    if item == nil
      array.delete(item)
    end
  end
end


def reverse_every_element_in_array(array)
  array.each do | item |
    item.reverse!
  end
  array
end

# given an array of student names, like ['Bob', 'Dave', 'Clive']
# give every possible pairing - in this case:
# [['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']]
# make sure you don't have the same pairing twice,
def every_possible_pairing_of_students(array)
  array.combination(2)
end


def all_elements_except_first_3(array)
    array.delete_at(0)
    array.delete_at(0)
    array.delete_at(0)
    array
end

def add_element_to_beginning_of_array(array, element)
  array.unshift(element)
end

def array_sort_by_last_letter_of_word(array)
  array.each do | item |
    item.reverse!
  end
  array.sort!
  array.each do | item |
    item.reverse!
  end
end

def get_first_half_of_string(string)
  l = (string.length.to_f/2).ceil
  string[0..(l-1)]
end

def make_numbers_negative(number)
  if number >= 0
    number = -number
  else
    number = number
  end
end

def separate_array_into_even_and_odd_numbers(array)
  even = []
  odd = []
  array.each do | elem |
    if elem % 2 == 0
      even << elem
    else
      odd << elem
    end
  end
  array = [even, odd]
end

def number_of_elements_that_are_palindromes(array)
  n = 0
  array.each do | element |
    if element == element.reverse
      n +=1
    end
  end
    n
end

def shortest_word_in_array(array)
    array.min_by(&:length)
end

def longest_word_in_array(array)
  array.max_by(&:length)
end

def total_of_array(array)
  array.flatten.inject(:+)
end

def double_array(array)
  array2 = Array.new(array)
  array.concat(array2)
end

def turn_symbol_into_string(symbol)
  symbol.to_s
end

def average_of_array(array)
  average = (array.inject(:+).to_f / array.length).ceil
end

def get_elements_until_greater_than_five(array)
  array2 = []
  array.each do | elem |
    array2.push(elem)
    break if elem > 5
  end
  array2.pop
  array2
end

def convert_array_to_a_hash(array)
  hash = Hash[*array.flatten]
end

def get_all_letters_in_array_of_words(array)
  array.join.chars.to_a.sort!
end

def swap_keys_and_values_in_a_hash(hash)
  hash.invert
end

def add_together_keys_and_values(hash)
  hash.flatten.inject(:+)
end

# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'
def remove_capital_letters_from_string(string)
  string2 = ''
  string.each_char { |chr|
    if chr == chr.downcase
      string2.concat(chr)
    end  }
  string2
end

def round_up_number(float)
  float.ceil
end

def round_down_number(float)
  float.to_i
end

# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013
def format_date_nicely(date)
end

# get the domain name *without* the .com part, from an email address
# so alex@makersacademy.com becomes makersacademy
def get_domain_name_from_email_address(email)

end

# capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'
def titleize_a_string(string)
  array = string.split
  p array
  array.each do |w|
    w.capitalize!
  end
  array

  # array.each do | article |
  #   if article == "and"
  #     article.downcase!
  #   end
  # end
end

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers
def check_a_string_for_special_characters(string)
  p string =~ /[^a-zA-Z0-9]/
  p string =~ /[a-zA-Z0-9]/
  true if string =~ /[^a-zA-Z0-9]/
end

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20
def get_upper_limit_of(range)

end

# should return true for a 3 dot range like 1...20, false for a
# normal 2 dot range
def is_a_3_dot_range?(range)
end


def square_root_of(number)
  Math.sqrt(number)
end

def word_count_a_file(file_path)
  file = File.open(file_path, "r")
  data = file.read
  file.close
  data.split.size
end

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked
def call_method_from_string(str_method)
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
end

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
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
