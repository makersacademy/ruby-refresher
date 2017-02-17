require 'rspec'
require 'questions'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end

describe 'the Friday test :)' do

  it 'select_elements_starting_with_a' do
    n = select_elements_starting_with_a ['bananas', 'apples', 'pears', 'avocados']
    expect(n).to eq ['apples', 'avocados']
  end

  it 'select_elements_starting_with_vowel' do
    n = select_elements_starting_with_vowel ['john', 'david', 'omar', 'fred', 'idris', 'angela']
    expect(n).to eq ['omar', 'idris', 'angela']
  end

  it 'remove_nils_from_array' do
    n = remove_nils_from_array ['a', 'b', nil, nil, false, 'c', nil]
    expect(n).to eq ['a', 'b', false, 'c']
  end

  it 'remove_nils_and_false_from_array' do
    n = remove_nils_and_false_from_array ['a', 'b', nil, nil, false, 'c', nil]
    expect(n).to eq ['a', 'b', 'c']
  end

  it 'reverse_every_element_in_array' do
    n = reverse_every_element_in_array ['dog', 'monkey', 'elephant']
    expect(n).to eq ['god', 'yeknom', 'tnahpele']
  end

  it 'every_possible_pairing_of_students' do
    n = every_possible_pairing_of_students(['Bob', 'Dave', 'Clive']) || []
    sorted = n.map {|pair| pair.sort}.sort_by {|pair| [pair.first, pair.last] }

    expect(sorted).to eq [['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']]
  end

  it 'all_elements_except_first_3' do
    n = all_elements_except_first_3 [1, 2, 3, 4, 5, 6, 7]
    expect(n).to eq [4, 5, 6, 7]
  end

  it 'add_element_to_beginning_of_array' do
    n = add_element_to_beginning_of_array [2, 3, 4, 5], 1
    expect(n).to eq [1, 2, 3, 4, 5]
  end

  it 'array_sort_by_last_letter_of_word' do
    n = array_sort_by_last_letter_of_word ['sky', 'puma', 'maker']
    expect(n).to eq ['puma', 'maker', 'sky']
  end

  fit 'get_first_half_of_string' do
    a = get_first_half_of_string 'banana'
    b = get_first_half_of_string 'apple'

    expect(a).to eq 'ban'
    expect(b).to eq 'app'
  end

  it 'make_numbers_negative' do
    a = make_numbers_negative 5
    b = make_numbers_negative -7

    expect(a).to eq -5
    expect(b).to eq -7
  end

  it 'separate_array_into_even_and_odd_numbers' do
    n = separate_array_into_even_and_odd_numbers [1, 2, 3, 4, 5, 6, 7]
    expect(n).to eq [[2, 4, 6], [1, 3, 5, 7]]
  end

  it 'number_of_elements_that_are_palindromes' do
    n = number_of_elements_that_are_palindromes ['bob', 'radar', 'alex', 'noon', 'banana']
    expect(n).to eq 3
  end

  it 'shortest_word_in_array' do
    n = shortest_word_in_array %w(here is a bunch of words of different lengths)
    expect(n).to eq 'a'
  end

  it 'longest_word_in_array' do
    n = longest_word_in_array %w(here is a bunch of words of different lengths)
    expect(n).to eq 'different'
  end

  it 'total_of_array' do
    n = total_of_array [1, 3, 5, 6, 2, 8]
    expect(n).to eq 25
  end

  it 'double_array' do
    n = double_array [1, 2, 3]
    expect(n).to eq [1, 2, 3, 1, 2, 3]
  end

  it 'turn_symbol_into_string' do
    n = turn_symbol_into_string :foobar
    expect(n).to eq 'foobar'
  end

  it 'average_of_array' do
    n = average_of_array [10, 15, 25]
    expect(n).to eq 17
  end

  it 'get_elements_until_greater_than_five' do
    n = get_elements_until_greater_than_five [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
    expect(n).to eq [1, 3, 5, 4, 1, 2]
  end

  it 'convert_array_to_a_hash' do
    n = convert_array_to_a_hash ['a', 'b', 'c', 'd']
    expect(n).to eq({'a' => 'b', 'c' => 'd'})
  end

  it 'get_all_letters_in_array_of_words' do
    n = get_all_letters_in_array_of_words ['cat', 'dog', 'fish']
    expect(n).to eq ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']
  end

  it 'swap_keys_and_values_in_a_hash' do
    n = swap_keys_and_values_in_a_hash({'a' => 'b', 'c' => 'd'})
    expect(n).to eq({'b' => 'a', 'd' => 'c'})
  end

  it 'add_together_keys_and_values' do
    n = add_together_keys_and_values({1 => 1, 2 => 2})
    expect(n).to eq 6
  end

  it 'remove_capital_letters_from_string' do
    n = remove_capital_letters_from_string 'Hello JohnDoe'
    expect(n).to eq 'ello ohnoe'
  end

  it 'round_up_number' do
    n = round_up_number 3.142
    expect(n).to eq 4
  end

  it 'round_down_number' do
    n = round_down_number 4.9
    expect(n).to eq 4
  end

  it 'format_date_nicely' do
    n = format_date_nicely Time.new(2013, 10, 31)
    expect(n).to eq '31/10/2013'
  end

  it 'get_domain_name_from_email_address' do
    n = get_domain_name_from_email_address 'alex@makersacademy.com'
    expect(n).to eq 'makersacademy'
  end

  it 'titleize_a_string' do
    n = titleize_a_string 'the lion the witch and the wardrobe'
    expect(n).to eq 'The Lion the Witch and the Wardrobe'
  end

  it 'check_a_string_for_special_characters' do
    a = check_a_string_for_special_characters 'ABCdef123'
    b = check_a_string_for_special_characters 'ABC@def123!'

    expect(a).to be false
    expect(b).to be true
  end

  it 'get_upper_limit_of' do
    n = get_upper_limit_of 1..20
    expect(n).to eq 20
  end

  it 'is_a_3_dot_range?' do
    a = is_a_3_dot_range? 1..20
    b = is_a_3_dot_range? 1...20

    expect(a).to be false
    expect(b).to be true
  end

  it 'square_root_of' do
    a = square_root_of 9
    b = square_root_of 3
    expect(a).to eq 3.0
    expect(b).to eq 1.7320508075688772
  end

  it 'word_count_a_file' do
    n = word_count_a_file 'data/lorem.txt'
    expect(n).to eq 70
  end

  it 'call_method_from_string' do
    expect { call_method_from_string('foobar') }.to raise_error(NameError)
  end

  it 'is_a_2014_bank_holiday?' do
    a = is_a_2014_bank_holiday?(Time.new(2014, 8, 25))
    b = is_a_2014_bank_holiday?(Time.new(2014, 8, 26))

    expect(a).to be true
    expect(b).to be false
  end

  it 'your_birthday_is_on_a_friday_in_the_year' do
    n = your_birthday_is_on_a_friday_in_the_year(Time.new(2013, 1, 1))
    expect(n).to eq 2016
  end

  it 'count_words_of_each_length_in_a_file' do
    n = count_words_of_each_length_in_a_file('data/lorem.txt') || []
    expect(Hash[n.sort]).to eq({1=>1, 2=>5, 3=>7, 4=>12, 5=>14, 6=>4, 7=>8, 8=>6, 9=>6, 10=>2, 11=>2, 12=>3})
  end
end
