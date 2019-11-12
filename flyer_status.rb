class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

# freq_flyers = flyers.select { |flyer| flyer.miles_flown >= 3000 }
# puts freq_flyers
# puts "\n"
# infreq_flyers = flyers.reject { |flyer| flyer.miles_flown >= 3000 }
# puts infreq_flyers

# puts flyers.any? { |flyer| flyer.status == :platinum }

# puts flyers.detect { |flyer| flyer.status == :bronze }

#  plats, coach = flyers.partition { |flyer| flyer.status == :platinum }
#  puts "Platinum:"
#  puts plats
#  puts "\n"
#  puts "Coach:"
#  puts coach

# Larry (PLATINUM)
# name_tags = flyers.map { |flyer| "#{flyer.name} (#{flyer.status.upcase})" }
# puts "Name Tags:"
# puts name_tags

# km_traveled = flyers.map { |flyer| "#{flyer.name} has traveled #{flyer.miles_flown * 1.6}km" }
# puts km_traveled

# total_miles_flown = flyers.reduce(0) { |sum, flyer| sum + flyer.miles_flown }
# p total_miles_flown

# total_km_flown = flyers.reduce(0) { |sum, flyer| sum + (flyer.miles_flown * 1.6) }
# p total_km_flown

#  total_km_bronze = flyers.select { |flyer| flyer.status == :bronze }.reduce(0) { |sum, flyer| sum + (flyer.miles_flown * 1.6) }
#  p total_km_bronze

max_flyer = flyers.max_by { |flyer| flyer.miles_flown }
p max_flyer