def select_elements_starting_with_a(array)
  array.select { |str| str.start_with?('a') }
end

def select_elements_starting_with_vowel(array)
  array.select { |str| str.start_with?('a','e','i','o','u')}
end

def remove_nils_from_array(array)
  array.compact
end

def remove_nils_and_false_from_array(array)
  results = []
  array.each do |word|
    results.push(word) unless word.nil? || word == false
  end
  return results
end

def reverse_every_element_in_array(array)
  array.map(&:reverse!)
end

def every_possible_pairing_of_students(array)
  array.combination(2).to_a
end


def all_elements_except_first_3(array)
  array.slice!(3..6)
end

def add_element_to_beginning_of_array(array, element)
  array.unshift(element)
end

def array_sort_by_last_letter_of_word(array)
  array.sort_by { |word| word[-1] }
end

def get_first_half_of_string(string)
  i = (string.size.to_f / 2).ceil
  string[0, i]
end

def make_numbers_negative(number)
  number = -(number.abs)
end

def separate_array_into_even_and_odd_numbers(array)
  odds = []
  evens = []
  array.each_with_index { |n,i| i % 2 == 0 ? evens << n : odds << n }
  [odds, evens]
end

def number_of_elements_that_are_palindromes(array)
  elements = 0
  array.each do |element|
    elements += 1 if element == element.reverse
  end
  return elements
end

def shortest_word_in_array(array)
  array.min_by(&:length)
end

def longest_word_in_array(array)
  array.max_by(&:length)
end

def total_of_array(array)
  array.inject(0, :+)
end

def double_array(array)
  array * 2
end

def turn_symbol_into_string(symbol)
  symbol.to_s
end

def average_of_array(array)
  (array.inject(:+).to_f / array.length).ceil
end

def get_elements_until_greater_than_five(array)
  greater_than_five = array.index { |element| element > 5}
  array.slice(0...greater_than_five)
end

def convert_array_to_a_hash(array)
  Hash[array.each_slice(2).to_a]
end

def get_all_letters_in_array_of_words(array)
   array.join.chars.sort
end

def swap_keys_and_values_in_a_hash(hash)
  hash.invert
end

def add_together_keys_and_values(hash)
   hash.inject{ |key, value| key + value }.reduce(:+)
end

def remove_capital_letters_from_string(string)
  string.tr("A-Z", "")
end

def round_up_number(float)
  float.ceil
end

def round_down_number(float)
  float.floor
end

def format_date_nicely(date)
  date.strftime("%d/%m/%Y")
end

def get_domain_name_from_email_address(email)
   email[/@(.*?).com/,1]
end

def titleize_a_string(string)
  words = ["a", "and", "the"]
  string.split.each_with_index.map { |word, index| words.include?(word) && index > 0 ? word : word.capitalize }.join(" ")
end

def check_a_string_for_special_characters(string)
   string =~ /\W/ ? true : false
end

def get_upper_limit_of(range)
  range.last
end

def is_a_3_dot_range?(range)
  range.exclude_end?
end

def square_root_of(number)
  Math.sqrt(number)
end

def word_count_a_file(file_path)
  word_count = 0
  File.open(file_path, "r").each_line do |line|
    word_count += line.split.count
  end
  word_count
end

# --- tougher ones ---

def call_method_from_string(str_method)
    str_method.run
end

def is_a_2014_bank_holiday?(date)
  bank_holidays = ["2014-01-01" , "2014-04-18", "2014-04-21", "2014-05-05", "2014-05-26", "2014-08-25", "2014-12-25", "2014-12-26"]
  bank_holidays.map!{ |x| x + " 00:00:00 +0100"}
  bank_holidays.include?(date.to_s)
end

def your_birthday_is_on_a_friday_in_the_year(birthday)
  until birthday.friday? do
    birthday += (31_536_000)
  end
  birthday.strftime("%Y").to_i
end

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}
def count_words_of_each_length_in_a_file(file_path)
  hash = {}
  File.open(file_path,"r") do |f|
   f.each_line do |line|
     line.scan(/[\w\']+/).each do |word|
       hash.key?(word.length) ? hash[word.length] += 1 : hash[word.length] = 1
     end
   end
end
hash
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
