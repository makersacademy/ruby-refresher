require 'rspec'
require 'questions'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end

describe 'the Friday test :)' do

  fit 'select_elements_starting_with_a' do
    n = select_elements_starting_with_a ['bananas', 'apples', 'pears', 'avocados']
    expect(n).to eq ['apples', 'avocados']
  end

  fit 'select_elements_starting_with_vowel' do
    n = select_elements_starting_with_vowel ['john', 'david', 'omar', 'fred', 'idris', 'angela']
    expect(n).to eq ['omar', 'idris', 'angela']
  end

  fit 'remove_nils_from_array' do
    n = remove_nils_from_array ['a', 'b', nil, nil, false, 'c', nil]
    expect(n).to eq ['a', 'b', false, 'c']
  end

  fit 'remove_nils_and_false_from_array' do
    n = remove_nils_and_false_from_array ['a', 'b', nil, nil, false, 'c', nil]
    expect(n).to eq ['a', 'b', 'c']
  end

  fit 'reverse_every_element_in_array' do
    n = reverse_every_element_in_array ['dog', 'monkey', 'elephant']
    expect(n).to eq ['god', 'yeknom', 'tnahpele']
  end

  fit 'every_possible_pairing_of_students' do
    n = every_possible_pairing_of_students(['Bob', 'Dave', 'Clive']) || []
    sorted = n.map {|pair| pair.sort}.sort_by {|pair| [pair.first, pair.last] }

    expect(sorted).to eq [['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']]
  end

  fit 'all_elements_except_first_3' do
    n = all_elements_except_first_3 [1, 2, 3, 4, 5, 6, 7]
    expect(n).to eq [4, 5, 6, 7]
  end

  fit 'add_element_to_beginning_of_array' do
    n = add_element_to_beginning_of_array [2, 3, 4, 5], 1
    expect(n).to eq [1, 2, 3, 4, 5]
  end

  fit 'array_sort_by_last_letter_of_word' do
    n = array_sort_by_last_letter_of_word ['sky', 'puma', 'maker']
    expect(n).to eq ['puma', 'maker', 'sky']
  end

  fit 'get_first_half_of_string' do
    a = get_first_half_of_string 'banana'
    b = get_first_half_of_string 'apple'

    expect(a).to eq 'ban'
    expect(b).to eq 'app'
  end

  fit 'make_numbers_negative' do
    a = make_numbers_negative 5
    b = make_numbers_negative -7

    expect(a).to eq -5
    expect(b).to eq -7
  end

  fit 'separate_array_into_even_and_odd_numbers' do
    n = separate_array_into_even_and_odd_numbers [1, 2, 3, 4, 5, 6, 7]
    expect(n).to eq [[2, 4, 6], [1, 3, 5, 7]]
  end

  fit 'number_of_elements_that_are_palindromes' do
    n = number_of_elements_that_are_palindromes ['bob', 'radar', 'alex', 'noon', 'banana']
    expect(n).to eq 3
  end

  fit 'shortest_word_in_array' do
    n = shortest_word_in_array %w(here is a bunch of words of different lengths)
    expect(n).to eq 'a'
  end

  fit 'longest_word_in_array' do
    n = longest_word_in_array %w(here is a bunch of words of different lengths)
    expect(n).to eq 'different'
  end

  fit 'total_of_array' do
    n = total_of_array [1, 3, 5, 6, 2, 8]
    expect(n).to eq 25
  end

  fit 'double_array' do
    n = double_array [1, 2, 3]
    expect(n).to eq [1, 2, 3, 1, 2, 3]
  end

  fit 'turn_symbol_into_string' do
    n = turn_symbol_into_string :foobar
    expect(n).to eq 'foobar'
  end

  fit 'average_of_array' do
    n = average_of_array [10, 15, 25]
    expect(n).to eq 17
  end

  fit 'get_elements_until_greater_than_five' do
    n = get_elements_until_greater_than_five [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
    expect(n).to eq [1, 3, 5, 4, 1, 2]
  end

  fit 'convert_array_to_a_hash' do
    n = convert_array_to_a_hash ['a', 'b', 'c', 'd']
    expect(n).to eq({'a' => 'b', 'c' => 'd'})
  end

  fit 'get_all_letters_in_array_of_words' do
    n = get_all_letters_in_array_of_words ['cat', 'dog', 'fish']
    expect(n).to eq ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
  end

  fit 'swap_keys_and_values_in_a_hash' do
    n = swap_keys_and_values_in_a_hash({'a' => 'b', 'c' => 'd'})
    expect(n).to eq({'b' => 'a', 'd' => 'c'})
  end

  fit 'add_together_keys_and_values' do
    n = add_together_keys_and_values({1 => 1, 2 => 2})
    expect(n).to eq 6
  end

  fit 'remove_capital_letters_from_string' do
    n = remove_capital_letters_from_string 'Hello JohnDoe'
    expect(n).to eq 'ello ohnoe'
  end

  fit 'round_up_number' do
    n = round_up_number 3.142
    expect(n).to eq 4
  end

  fit 'round_down_number' do
    n = round_down_number 4.9
    expect(n).to eq 4
  end

  fit 'format_date_nicely' do
    n = format_date_nicely Time.new(2013, 10, 31)
    expect(n).to eq '31/10/2013'
  end

  fit 'get_domain_name_from_email_address' do
    n = get_domain_name_from_email_address 'alex@makersacademy.com'
    expect(n).to eq 'makersacademy'
  end

  fit 'titleize_a_string' do
    n = titleize_a_string 'the lion the witch and the wardrobe'
    expect(n).to eq 'The Lion the Witch and the Wardrobe'
  end

  fit 'check_a_string_for_special_characters' do
    a = check_a_string_for_special_characters 'ABCdef123'
    b = check_a_string_for_special_characters 'ABC@def123!'

    expect(a).to be false
    expect(b).to be true
  end

  fit 'get_upper_limit_of' do
    n = get_upper_limit_of 1..20
    expect(n).to eq 20
  end

  fit 'is_a_3_dot_range?' do
    a = is_a_3_dot_range? 1..20
    b = is_a_3_dot_range? 1...20

    expect(a).to be false
    expect(b).to be true
  end

  fit 'square_root_of' do
    a = square_root_of 9
    b = square_root_of 3
    expect(a).to eq 3.0
    expect(b).to eq 1.7320508075688772
  end

  fit 'word_count_a_file' do
    n = word_count_a_file 'data/lorem.txt'
    expect(n).to eq 70
  end

  fit 'call_method_from_string' do
    expect { call_method_from_string('foobar') }.to raise_error(NameError)
  end

  fit 'is_a_2014_bank_holiday?' do
    a = is_a_2014_bank_holiday?(Time.new(2014, 8, 25))
    b = is_a_2014_bank_holiday?(Time.new(2014, 8, 26))

    expect(a).to be true
    expect(b).to be false
  end

  fit 'your_birthday_is_on_a_friday_in_the_year' do
    n = your_birthday_is_on_a_friday_in_the_year(Time.new(2013, 1, 1))
    expect(n).to eq 2016
  end

  fit 'count_words_of_each_length_in_a_file' do
    n = count_words_of_each_length_in_a_file('data/lorem.txt') || []
    expect(Hash[n.sort]).to eq({1=>1, 2=>5, 3=>7, 4=>12, 5=>14, 6=>4, 7=>8, 8=>6, 9=>6, 10=>2, 11=>2, 12=>3})
  end
end

describe "fizzbuz" do
  it "should check if a number is divisible by 3" do
    expect(divisible_by_3?(4)).to eq false
  end

  it "should check if a number is divisibly by 5" do
    expect(divisible_by_5?(5)).to eq true
  end

  it "should check if a number is divisible by 15" do
    expect(divisible_by_15?(45)).to eq true
  end

  it "should return fizz for multiples of 3" do
    expect(fizzbuzz(6)).to eq "fizz"
  end

  it "should return buzz for multiples of 5" do
    expect(fizzbuzz(20)).to eq "buzz"
  end

  it "should return fizzbuzz for multiples of 15" do
    expect(fizzbuzz(30)).to eq "fizzbuzz"
  end

  it "should return the number if none of the above" do
    expect(fizzbuzz(1)).to eq 1
  end

  it "should print out an array with all results from 1 to 100" do
    expect(fizzbuzz_without_modulo).to eq [1, 2, "fizz", 4, "buzz", "fizz", 7, 8, "fizz", "buzz", 11, "fizz", 13, 14, "fizzbuzz", 16, 17, "fizz", 19, "buzz", "fizz", 22, 23, "fizz", "buzz", 26, "fizz", 28, 29, "fizzbuzz", 31, 32, "fizz", 34, "buzz", "fizz", 37, 38, "fizz", "buzz", 41, "fizz", 43, 44, "fizzbuzz", 46, 47, "fizz", 49, "buzz", "fizz", 52, 53, "fizz", "buzz", 56, "fizz", 58, 59, "fizzbuzz", 61, 62, "fizz", 64, "buzz", "fizz", 67, 68, "fizz", "buzz", 71, "fizz", 73, 74, "fizzbuzz", 76, 77, "fizz", 79, "buzz", "fizz", 82, 83, "fizz", "buzz", 86, "fizz", 88, 89, "fizzbuzz", 91, 92, "fizz", 94, "buzz", "fizz", 97, 98, "fizz", "buzz"]
  end
end

describe "bottles of beer" do
  it "2-99: should take the number and do the normal song lyric" do
  expect(bottles(99)).to eq "99 bottles of beer on the wall, 99 bottles of beer. \n Take one down and pass it around, 98 bottles of beer on the wall."
  end

  it "1: should take the number and make it singular" do
  expect(bottles(1)).to eq "1 bottle of beer on the wall, 1 bottle of beer. \n Take one down and pass it around, no more bottles of beer on the wall."
  end

  it "0: should do the last line" do
  expect(bottles(0)).to eq "No more bottles of beer on the wall, no more bottles of beer. \n Go to the store and buy some more, 99 bottles of beer on the wall."
  end

  it "should sing the song" do
    expect(ninety_nine_bottles_of_beer).to eq "99 bottles of beer on the wall, 99 bottles of beer. \n Take one down and pass it around, 98 bottles of beer on the wall.\n\n98 bottles of beer on the wall, 98 bottles of beer. \n Take one down and pass it around, 97 bottles of beer on the wall.\n\n97 bottles of beer on the wall, 97 bottles of beer. \n Take one down and pass it around, 96 bottles of beer on the wall.\n\n96 bottles of beer on the wall, 96 bottles of beer. \n Take one down and pass it around, 95 bottles of beer on the wall.\n\n95 bottles of beer on the wall, 95 bottles of beer. \n Take one down and pass it around, 94 bottles of beer on the wall.\n\n94 bottles of beer on the wall, 94 bottles of beer. \n Take one down and pass it around, 93 bottles of beer on the wall.\n\n93 bottles of beer on the wall, 93 bottles of beer. \n Take one down and pass it around, 92 bottles of beer on the wall.\n\n92 bottles of beer on the wall, 92 bottles of beer. \n Take one down and pass it around, 91 bottles of beer on the wall.\n\n91 bottles of beer on the wall, 91 bottles of beer. \n Take one down and pass it around, 90 bottles of beer on the wall.\n\n90 bottles of beer on the wall, 90 bottles of beer. \n Take one down and pass it around, 89 bottles of beer on the wall.\n\n89 bottles of beer on the wall, 89 bottles of beer. \n Take one down and pass it around, 88 bottles of beer on the wall.\n\n88 bottles of beer on the wall, 88 bottles of beer. \n Take one down and pass it around, 87 bottles of beer on the wall.\n\n87 bottles of beer on the wall, 87 bottles of beer. \n Take one down and pass it around, 86 bottles of beer on the wall.\n\n86 bottles of beer on the wall, 86 bottles of beer. \n Take one down and pass it around, 85 bottles of beer on the wall.\n\n85 bottles of beer on the wall, 85 bottles of beer. \n Take one down and pass it around, 84 bottles of beer on the wall.\n\n84 bottles of beer on the wall, 84 bottles of beer. \n Take one down and pass it around, 83 bottles of beer on the wall.\n\n83 bottles of beer on the wall, 83 bottles of beer. \n Take one down and pass it around, 82 bottles of beer on the wall.\n\n82 bottles of beer on the wall, 82 bottles of beer. \n Take one down and pass it around, 81 bottles of beer on the wall.\n\n81 bottles of beer on the wall, 81 bottles of beer. \n Take one down and pass it around, 80 bottles of beer on the wall.\n\n80 bottles of beer on the wall, 80 bottles of beer. \n Take one down and pass it around, 79 bottles of beer on the wall.\n\n79 bottles of beer on the wall, 79 bottles of beer. \n Take one down and pass it around, 78 bottles of beer on the wall.\n\n78 bottles of beer on the wall, 78 bottles of beer. \n Take one down and pass it around, 77 bottles of beer on the wall.\n\n77 bottles of beer on the wall, 77 bottles of beer. \n Take one down and pass it around, 76 bottles of beer on the wall.\n\n76 bottles of beer on the wall, 76 bottles of beer. \n Take one down and pass it around, 75 bottles of beer on the wall.\n\n75 bottles of beer on the wall, 75 bottles of beer. \n Take one down and pass it around, 74 bottles of beer on the wall.\n\n74 bottles of beer on the wall, 74 bottles of beer. \n Take one down and pass it around, 73 bottles of beer on the wall.\n\n73 bottles of beer on the wall, 73 bottles of beer. \n Take one down and pass it around, 72 bottles of beer on the wall.\n\n72 bottles of beer on the wall, 72 bottles of beer. \n Take one down and pass it around, 71 bottles of beer on the wall.\n\n71 bottles of beer on the wall, 71 bottles of beer. \n Take one down and pass it around, 70 bottles of beer on the wall.\n\n70 bottles of beer on the wall, 70 bottles of beer. \n Take one down and pass it around, 69 bottles of beer on the wall.\n\n69 bottles of beer on the wall, 69 bottles of beer. \n Take one down and pass it around, 68 bottles of beer on the wall.\n\n68 bottles of beer on the wall, 68 bottles of beer. \n Take one down and pass it around, 67 bottles of beer on the wall.\n\n67 bottles of beer on the wall, 67 bottles of beer. \n Take one down and pass it around, 66 bottles of beer on the wall.\n\n66 bottles of beer on the wall, 66 bottles of beer. \n Take one down and pass it around, 65 bottles of beer on the wall.\n\n65 bottles of beer on the wall, 65 bottles of beer. \n Take one down and pass it around, 64 bottles of beer on the wall.\n\n64 bottles of beer on the wall, 64 bottles of beer. \n Take one down and pass it around, 63 bottles of beer on the wall.\n\n63 bottles of beer on the wall, 63 bottles of beer. \n Take one down and pass it around, 62 bottles of beer on the wall.\n\n62 bottles of beer on the wall, 62 bottles of beer. \n Take one down and pass it around, 61 bottles of beer on the wall.\n\n61 bottles of beer on the wall, 61 bottles of beer. \n Take one down and pass it around, 60 bottles of beer on the wall.\n\n60 bottles of beer on the wall, 60 bottles of beer. \n Take one down and pass it around, 59 bottles of beer on the wall.\n\n59 bottles of beer on the wall, 59 bottles of beer. \n Take one down and pass it around, 58 bottles of beer on the wall.\n\n58 bottles of beer on the wall, 58 bottles of beer. \n Take one down and pass it around, 57 bottles of beer on the wall.\n\n57 bottles of beer on the wall, 57 bottles of beer. \n Take one down and pass it around, 56 bottles of beer on the wall.\n\n56 bottles of beer on the wall, 56 bottles of beer. \n Take one down and pass it around, 55 bottles of beer on the wall.\n\n55 bottles of beer on the wall, 55 bottles of beer. \n Take one down and pass it around, 54 bottles of beer on the wall.\n\n54 bottles of beer on the wall, 54 bottles of beer. \n Take one down and pass it around, 53 bottles of beer on the wall.\n\n53 bottles of beer on the wall, 53 bottles of beer. \n Take one down and pass it around, 52 bottles of beer on the wall.\n\n52 bottles of beer on the wall, 52 bottles of beer. \n Take one down and pass it around, 51 bottles of beer on the wall.\n\n51 bottles of beer on the wall, 51 bottles of beer. \n Take one down and pass it around, 50 bottles of beer on the wall.\n\n50 bottles of beer on the wall, 50 bottles of beer. \n Take one down and pass it around, 49 bottles of beer on the wall.\n\n49 bottles of beer on the wall, 49 bottles of beer. \n Take one down and pass it around, 48 bottles of beer on the wall.\n\n48 bottles of beer on the wall, 48 bottles of beer. \n Take one down and pass it around, 47 bottles of beer on the wall.\n\n47 bottles of beer on the wall, 47 bottles of beer. \n Take one down and pass it around, 46 bottles of beer on the wall.\n\n46 bottles of beer on the wall, 46 bottles of beer. \n Take one down and pass it around, 45 bottles of beer on the wall.\n\n45 bottles of beer on the wall, 45 bottles of beer. \n Take one down and pass it around, 44 bottles of beer on the wall.\n\n44 bottles of beer on the wall, 44 bottles of beer. \n Take one down and pass it around, 43 bottles of beer on the wall.\n\n43 bottles of beer on the wall, 43 bottles of beer. \n Take one down and pass it around, 42 bottles of beer on the wall.\n\n42 bottles of beer on the wall, 42 bottles of beer. \n Take one down and pass it around, 41 bottles of beer on the wall.\n\n41 bottles of beer on the wall, 41 bottles of beer. \n Take one down and pass it around, 40 bottles of beer on the wall.\n\n40 bottles of beer on the wall, 40 bottles of beer. \n Take one down and pass it around, 39 bottles of beer on the wall.\n\n39 bottles of beer on the wall, 39 bottles of beer. \n Take one down and pass it around, 38 bottles of beer on the wall.\n\n38 bottles of beer on the wall, 38 bottles of beer. \n Take one down and pass it around, 37 bottles of beer on the wall.\n\n37 bottles of beer on the wall, 37 bottles of beer. \n Take one down and pass it around, 36 bottles of beer on the wall.\n\n36 bottles of beer on the wall, 36 bottles of beer. \n Take one down and pass it around, 35 bottles of beer on the wall.\n\n35 bottles of beer on the wall, 35 bottles of beer. \n Take one down and pass it around, 34 bottles of beer on the wall.\n\n34 bottles of beer on the wall, 34 bottles of beer. \n Take one down and pass it around, 33 bottles of beer on the wall.\n\n33 bottles of beer on the wall, 33 bottles of beer. \n Take one down and pass it around, 32 bottles of beer on the wall.\n\n32 bottles of beer on the wall, 32 bottles of beer. \n Take one down and pass it around, 31 bottles of beer on the wall.\n\n31 bottles of beer on the wall, 31 bottles of beer. \n Take one down and pass it around, 30 bottles of beer on the wall.\n\n30 bottles of beer on the wall, 30 bottles of beer. \n Take one down and pass it around, 29 bottles of beer on the wall.\n\n29 bottles of beer on the wall, 29 bottles of beer. \n Take one down and pass it around, 28 bottles of beer on the wall.\n\n28 bottles of beer on the wall, 28 bottles of beer. \n Take one down and pass it around, 27 bottles of beer on the wall.\n\n27 bottles of beer on the wall, 27 bottles of beer. \n Take one down and pass it around, 26 bottles of beer on the wall.\n\n26 bottles of beer on the wall, 26 bottles of beer. \n Take one down and pass it around, 25 bottles of beer on the wall.\n\n25 bottles of beer on the wall, 25 bottles of beer. \n Take one down and pass it around, 24 bottles of beer on the wall.\n\n24 bottles of beer on the wall, 24 bottles of beer. \n Take one down and pass it around, 23 bottles of beer on the wall.\n\n23 bottles of beer on the wall, 23 bottles of beer. \n Take one down and pass it around, 22 bottles of beer on the wall.\n\n22 bottles of beer on the wall, 22 bottles of beer. \n Take one down and pass it around, 21 bottles of beer on the wall.\n\n21 bottles of beer on the wall, 21 bottles of beer. \n Take one down and pass it around, 20 bottles of beer on the wall.\n\n20 bottles of beer on the wall, 20 bottles of beer. \n Take one down and pass it around, 19 bottles of beer on the wall.\n\n19 bottles of beer on the wall, 19 bottles of beer. \n Take one down and pass it around, 18 bottles of beer on the wall.\n\n18 bottles of beer on the wall, 18 bottles of beer. \n Take one down and pass it around, 17 bottles of beer on the wall.\n\n17 bottles of beer on the wall, 17 bottles of beer. \n Take one down and pass it around, 16 bottles of beer on the wall.\n\n16 bottles of beer on the wall, 16 bottles of beer. \n Take one down and pass it around, 15 bottles of beer on the wall.\n\n15 bottles of beer on the wall, 15 bottles of beer. \n Take one down and pass it around, 14 bottles of beer on the wall.\n\n14 bottles of beer on the wall, 14 bottles of beer. \n Take one down and pass it around, 13 bottles of beer on the wall.\n\n13 bottles of beer on the wall, 13 bottles of beer. \n Take one down and pass it around, 12 bottles of beer on the wall.\n\n12 bottles of beer on the wall, 12 bottles of beer. \n Take one down and pass it around, 11 bottles of beer on the wall.\n\n11 bottles of beer on the wall, 11 bottles of beer. \n Take one down and pass it around, 10 bottles of beer on the wall.\n\n10 bottles of beer on the wall, 10 bottles of beer. \n Take one down and pass it around, 9 bottles of beer on the wall.\n\n9 bottles of beer on the wall, 9 bottles of beer. \n Take one down and pass it around, 8 bottles of beer on the wall.\n\n8 bottles of beer on the wall, 8 bottles of beer. \n Take one down and pass it around, 7 bottles of beer on the wall.\n\n7 bottles of beer on the wall, 7 bottles of beer. \n Take one down and pass it around, 6 bottles of beer on the wall.\n\n6 bottles of beer on the wall, 6 bottles of beer. \n Take one down and pass it around, 5 bottles of beer on the wall.\n\n5 bottles of beer on the wall, 5 bottles of beer. \n Take one down and pass it around, 4 bottles of beer on the wall.\n\n4 bottles of beer on the wall, 4 bottles of beer. \n Take one down and pass it around, 3 bottles of beer on the wall.\n\n3 bottles of beer on the wall, 3 bottles of beer. \n Take one down and pass it around, 2 bottles of beer on the wall.\n\n2 bottles of beer on the wall, 2 bottles of beer. \n Take one down and pass it around, 1 bottles of beer on the wall.\n\n1 bottle of beer on the wall, 1 bottle of beer. \n Take one down and pass it around, no more bottles of beer on the wall.\n\nNo more bottles of beer on the wall, no more bottles of beer. \n Go to the store and buy some more, 99 bottles of beer on the wall."
  end
end
