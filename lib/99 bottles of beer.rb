def ninety_nine_bottles_of_beer

  bottle = 99

  while true
    puts "#{bottle} bottles of beers on the wall, #{bottle} bottles of beer."
    puts "Take one down, and pass it around, #{bottle - 1} bottles of beer on the wall."
    bottle = bottle - 1
      if bottle == 1
        puts "#{bottle} more bottle of beer on the wall, #{bottle} more bottle of beer."
        puts "Take it down, and pass it around no more bottles of beer on the wall."
        break
      end
    end

end

ninety_nine_bottles_of_beer
