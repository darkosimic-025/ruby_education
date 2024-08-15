def divisible_by_three
  (1..100).each do |number|
    if (number % 3) == 0
      puts number
    end
  end
end