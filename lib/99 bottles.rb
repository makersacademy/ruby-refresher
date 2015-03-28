  def ninety_nine_bottles_of_beer
    bottles = 100
    bottles.downto(2) do |bottles|
      if (bottles-1) > 1
      puts (bottles-1).to_s + " Bottles of beer on the wall, " +
      (bottles-1).to_s + " Bottles of beer! You take one down, you pass it
      around and " + (bottles-2).to_s + " Bottles of beer on the wall!"
      else
        puts (bottles-1).to_s + " Bottle of beer on the wall, " +
      (bottles-1).to_s + " Bottle of beer! You take one down, you pass it
      around and " + (bottles-2).to_s + " Bottle of beer on the wall!"
    end
    end
    # bottles = (bottles-1)
  end

puts  ninety_nine_bottles_of_beer