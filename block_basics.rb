require 'benchmark'

# 1.step(9, 2) { |n| puts "\n#{n} situp\n#{n} pushup\n#{n} chinup" }

# desserts = { "chocolate" => 1.00, "vanilla" => 0.75, "cinnamon" => 1.25 }
# $2.0 for a cup of chocolate.

# desserts.each { |treat, price| puts "$#{price * 2} for a cup of #{treat}" }


# def h1
#   # "<h1>#{yield}</h1>"
#   print "<h1>"
#   print yield
#   print "</h1>"
# end

# puts h1 { "Breaking News!" }

# def h2
#   # "<h2>#{yield}</h2>"
#   print "<h2>"
#   print yield
#   print "</h2>"
# end

# puts h2 { "Massive Ruby Discovered" }

# def tag(tag_name)
#   print "<#{tag_name.to_s}>"
#   print yield
#   print "</#{tag_name.to_s}>"
# end

# tag(:h1) { "Breaking News!" }
# tag(:h2) { "Massive Ruby Discovered" }

# tag(:ul) do
#   tag(:li) { "It sparkles!"}
#   tag(:li) { "It shines!"}
#   tag(:li) { "It mesmerizes!"}
# end


# def with_debugging
#   puts "Got Here!"
#   result = yield
#   puts "Result was #{result}"
# end

# with_debugging do
#   magic_number = (23 - Time.now.hour) * Math::PI
# end

# def with_expectation(expected_value)
#   puts "Running test..."
#   actual_value = yield 
#   if actual_value == expected_value
#     puts "Passed"
#   else
#     puts "Failed"
#     puts "Expected #{expected_value}, but got #{actual_value}"
#   end
#   # puts yield == expected_value ? "Passed" : "Failed"
# end

# with_expectation(5) { 2 + 2 }

def time_it(description)
  # start_time = Time.now
  # yield
  # end_time = Time.now
  elapsed_time = Benchmark.realtime { yield }
  puts "#{description} took #{elapsed_time}"
end

time_it("Sleepy code") do
  # run some code
  sleep(1)
end
# Sleepy code took 1.000424