def deal(num_deals)
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  if block_given?
    num_deals.times do
      random_face = faces.sample
      random_suit = suits.sample
      score = yield(random_face, random_suit)
      puts "You scored a #{score}!"
    end
  else
    puts "No Deal!"
  end
end

deal(3) do |face, suit|
  puts "Dealt a #{face} of #{suit}"
  face.length + suit.length
end

# deal