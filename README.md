#### Welcome to Ruby Refresher!

After spending a couple of weeks learning JavaScript, I completed this challenge to remind myself of some ruby syntax. It consisted of 39 failing RSpec tests which I was asked to make pass. Some were easy, some were very hard. But in the end, I managed to get them all to pass!

The main learning I take away from this challenge is research skills, as I managed to find almost all answers online using the right search terms and websites.

### Technologies:
- Ruby (version 2.4.0)
- RSpec (version 3.6)

### Key features:
- 39 failing tests at the start
- 39 passing tests at the end

### Deployment instructions:
1. Navigate to your projects directory
2. Run ```git clone https://github.com/connie-reinholdsson/ruby-refresher.git```
3. Run ```cd ruby-refresher```
4. Run ```rspec```

Please note: below is the challenge as I was given it.

Enjoy!

## Ruby Refresher

Here we're going to revisit the basics of Ruby. There are 41 questions - you don't have to do every single one (although if you can, that's great). You should be able to do at least 50% of them. They vary in level from quite easy to fairly hard. Work through them and check if they're correct by running the specs.

You should be able to answer most questions with a couple of lines of code, and just a few methods. If you're writing a long, complex solution, there's probably a better way.

As usual, fork the repo - and get ready to revisit a dear old friend :smile:

To run the specs, just run

~~~
$ rspec questions_spec.rb
~~~

**Quick tip**: to run a single example, change `it` to `fit` on that example, then run

~~~
$ rspec spec/questions_spec.rb --tag focus
~~~

Also, don't spend the whole weekend on this. Try and do the bulk of them today, revisit it a bit this weekend if you want. Spend the weekend consolidating the stuff we've covered in JS :smile:

Good luck

### Rules

* Try and get the RSpec tests to pass (but not by cheating - i.e. hardcoding the expected value)
* You shouldn't need any extra libraries or gems
* The cleaner your code the better!
* Googling is fine as usual
* Finally submit a pull request before Monday at 9am with your solution or partial solution.  However much or little amount of code you wrote please please please submit a pull request before Monday at 9am

### Tips

* Use the ruby docs http://www.ruby-doc.org/core-2.0.0/String.html
* Try and break down the problems into smaller chunks. For e.g. if you google "How to select elements in an array that start with a", you won't have much luck. Try and find out a) how to select certain elements in an array, b) how to test if a string starts with an 'a'
* Don't forget Enumerable (advanced array methods)
* Read the specs and the comments - if you're still confused, just ask.
* Don't panic :wink:
