# def three_times
#   1.upto(3) { |count| yield(count) }
#   # yield 1
#   # yield 2
#   # yield 3
# end

# three_times do |number|
#   puts "#{number} situp"
#   puts "#{number} pushup"
#   puts "#{number} chinup"
# end


# def n_times(n)
#   1.upto(n) { |count| yield(count) }
# end

# n_times(5) do |n|
#   puts "#{n} situps"
#   puts "#{n} pushups"
#   puts "#{n} chinups"
# end


def progress
  0.step(100, 10) { |n| yield(n) }
end
progress { |percent| puts percent }

