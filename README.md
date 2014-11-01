## Friday test!

Here we're going to revisit the basics of Ruby. There are 41 questions - you don't have to do every single one (although if you can, that's great). You should be able to do at least 50% of them. They vary in level from quite easy to fairly hard. Work through them and check if they're correct by running the specs.

You should be able to answer most questions with a couple of lines of code, and just a few methods. If you're writing a long, complex solution, there's probably a better way.

###Progress

 1. ☺  select_elements_starting_with_a
 2. ☺  select_elements_starting_with_vowel
 3. ☺  remove_nils_from_array
 4. ☺  remove_nils_and_false_from_array
 5.    reverse_every_element_in_array
 6.    every_possible_pairing_of_students
 7.    all_elements_except_first_3
 8.    add_element_to_beginning_of_array
 9.    array_sort_by_last_letter_of_word
10.    get_first_half_of_string
11.    make_numbers_negative
12.    separate_array_into_even_and_odd_numbers
13.    number_of_elements_that_are_palindromes
14.    shortest_word_in_array
15.    longest_word_in_array
16.    total_of_array
17.    double_array
18.    turn_symbol_into_string
19.    average_of_array
20.    get_elements_until_greater_than_five
21.    convert_array_to_a_hash
22.    get_all_letters_in_array_of_words
23.    swap_keys_and_values_in_a_hash
24.    add_together_keys_and_values
25.    remove_capital_letters_from_string
26.    round_up_number
27.    round_down_number
28.    format_date_nicely
29.    get_domain_name_from_email_address
30.    titleize_a_string
31.    check_a_string_for_special_characters
32.    get_upper_limit_of
33.    is_a_3_dot_range?
34.    square_root_of
35.    word_count_a_file
36.    call_method_from_string
37.    is_a_2014_bank_holiday?
38.    your_birthday_is_on_a_friday_in_the_year
39.    count_words_of_each_length_in_a_file  			



###Instructions

To run the specs, just run

~~~
$ rspec questions_spec.rb
~~~

**Quick tip**: to run a single example, change `it` to `fit` on that example, then run

~~~
$ rspec questions_spec.rb --tag focus
~~~

Also, don't spend the whole weekend on this. Try and do the bulk of them today, revisit it a bit this weekend if you want. Spend the weekend consolodating the stuff we've covered on JS and Node.js, and carrying on with your Node.js apps :smile:

Good luck

### Rules

* Try and get the RSpec tests to pass (but not by cheating - i.e. hardcoding the expected value)
* You shouldn't need any extra libraries or gems
* The cleaner your code the better!
* Googling is fine as usual

### Tips

* Use the ruby docs http://www.ruby-doc.org/core-2.0.0/String.html
* Try and break down the problems into smaller chunks. For e.g. if you google "How to select elements in an array that start with a", you won't have much luck. Try and find out a) how to select certain elements in an array, b) how to test if a string starts with an 'a'
* Don't forget Enumerable (advanced array methods)
* Read the specs and the comments - if you're still confused, just ask.
* Don't panic :wink:
