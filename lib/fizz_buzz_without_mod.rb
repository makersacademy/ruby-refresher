def fizzbuzz_without_modulo(number)

    return 'fizzbuzz' if divisible_by_fifteen?(number)
    return 'fizz' if divisible_by_three?(number)
    return 'buzz' if divisible_by_five?(number)

  number

end

def divisible_by_three?(number)
  is_divisible_by(number,3)
end

def divisible_by_five?(number)
  is_divisible_by(number,5)
end

def divisible_by_fifteen?(number)
    is_divisible_by(number,15)
end

def is_divisible_by(n,divisor)
round_up(n,divisor) == round_down(n,divisor)
end

def round_up(n,m)
  (n/m.to_f).ceil
end

def round_down(n,m)
  n/m.to_f.to_i
end
puts 'FIZZBUZZ:'
for n in 1..101
  print "#{fizzbuzz_without_modulo(n)} "
end
