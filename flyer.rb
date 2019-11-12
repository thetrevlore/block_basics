class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

five_flyers = []

1.upto(5) do |count|
  five_flyers << Flyer.new("Flyer #{count}", "flyer#{count}@example.com", count * 1000)
end

# five_flyers.each { |flyer| puts "#{flyer.name} - #{flyer.miles_flown} miles" }

total_miles = 0
five_flyers.each { |flyer| total_miles += flyer.miles_flown }
# puts "Total miles flown: #{total_miles}"

promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }
# Earn 1.5x miles by flying United!
# promotions.each { |name, value| puts "Earn #{value}x miles by flying #{name}!" }

five_flyers.each do |flyer|
  promotions.each { |airline, multiplier| puts "#{flyer.name} could earn #{1000 * multiplier} miles by flying #{airline}!" }
end
# Flyer 1 could earn 1500.0 miles by flying United!

# puts five_flyers

# 1.upto(10) { |count| puts "#{count} alligator" }

# 1.step(9, 2) { puts ""}