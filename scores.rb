scores = [83, 71, 92, 64, 98, 87, 75, 69]
# high_scores = scores.select { |score| score > 80 }
# p high_scores

# low_scores = scores.reject { |score| score > 80 }
# p low_scores

# puts scores.any? { |score| score < 70 }
# puts scores.detect { |score| score < 70 }
# puts "\n"

# scores.select! { |score| score > 70 }
# p scores
# puts "\n"
# scores.reject! { |score| score.even? }
# p scores

doubles = scores.map { |score| score * 2 }
p doubles

get_ice_cream = scores.reduce(:+) >= 600
puts get_ice_cream

evens, odds = scores.partition { |score| score.even? }
p evens
p odds