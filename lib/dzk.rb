  def fizzbuzz_without_modulo
    num = 0
    num.upto(100) do |value|
      if value % 15 == 0
        puts "FizzBuzz"
      elsif value % 5 == 0
        "Buzz"
      elsif value % 3 == 0
        puts "Fizz"
      else
        puts value
      end
    end
    puts num
  end

puts  fizzbuzz_without_modulo