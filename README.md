# Ruby Refresher
### Makers Academy Weekend Challenge No. 7

[![Build Status](https://travis-ci.org/KatHicks/ruby-refresher.svg?branch=master)](https://travis-ci.org/KatHicks/ruby-refresher) [![Coverage Status](https://coveralls.io/repos/github/KatHicks/ruby-refresher/badge.svg?branch=master)](https://coveralls.io/github/KatHicks/ruby-refresher?branch=master) [![Code Climate](https://codeclimate.com/github/KatHicks/ruby-refresher/badges/gpa.svg)](https://codeclimate.com/github/KatHicks/ruby-refresher)

### Instructions

* We were given the weekend to complete the challenge and were not allowed to use any gems to solve the challenges.
* As usual, we were required to work on our own for this challenge
* We were allowed, again as usual, to consult resources online or in books

### Task

We have 41 empty methods with failing tests. The task is to implement code within the empty methods to make the tests pass. You should be able to do at least 50% of them and they vary in level from quite easy to fairly hard. Work through them and check if they're correct by running the specs.

You should be able to answer most questions with a couple of lines of code, and just a few methods. If you're writing a long, complex solution, there's probably a better way.

See here for the full instructions: [INSTRUCTIONS.md](ruby-refresher/INSTRUCTIONS.md)

### Using my application

* To run the specs, just run `$ rspec questions_spec.rb` or `$ rspec` only
* All my individual methods and solutions are in the `questions.rb` file ([see here](ruby-refresher/lib/questions.rb))

### Dependencies

* Used **RSpec** for testing and plain **Ruby** to pass the tests
* No other gems were used, as part of the task was the solve the problems independently without the help of external libraries

### Reflections on my solutions

* **Lots of fun**
  * We've spent the last week working in JavaScript so it was really nice returning to Ruby
  * It's also quite fun solving little challenges just for the challenge's sake
  * It was also comforting to realise that despite learning a new language, I've not completely forgotten my first language
* **Cleaning up results arrays**
  * One pattern that found myself repeating a number of times was [1] creating an empty array, then [2] pushing into the empty array when looping through the parameter, before [3] returning the new array on the last line of the method. See example below:

    ```
    def separate_array_into_even_and_odd_numbers(array)
      result = [[],[]]
      array.each { |x| x.even? ? (result[0].push(x)) : (result[1].push(x)) }
      result
    end
    ```

  * I'm not very happy with this pattern as it means the variable (called `result` in the case above) gets repeated on two lines and it makes the method block look a bit clunky
  * Sometimes this pattern can be avoided by using `:collect` or `:map`, instead of `:each`, which return the new array as part of the iteration. However, in several cases in this challenge, couldn't figure out a way of not defining an empty array before the loop
* **Using the tests to explain the task**
  * Also had a few instances in which looking at the specs really helped me understand the question
  * Question 28 (on line 229 in `questions.rb`) confused me for a long time as the commented instructions stated:
    > "Take a date and format it like dd/mm/yyyy, so Halloween 2013 becomes 31/10/2013".

  * I'd read these instructions as expecting me to parse colloquial dates (such as holidays, festivals or Halloween in this case) into a DateTime object!
  * It was only when finally looking at the specs that realised that the parameter passed wasn't going to be a colloquial festival name but a DateTime object itself and all that was needed was to format it into a string
  * We've been told during the course that specs are not only a product of the vital TDD process but also become de facto documentation for the code base itself. Yet, hadn't really experienced that first hand before. Really needed the specs here to understand the problem!
