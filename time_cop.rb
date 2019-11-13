require 'timeout'

# Timeout.timeout(2.0) do
#   sleep 3.0
#   puts "That was refreshing..."
# end

def try_with_timeout(duration)
  begin
    Timeout.timeout(duration) { yield }
  rescue Timeout::Error
    puts "Took too long!"
  end
end

try_with_timeout(2.0) do
  sleep 1.0
  puts "That was refreshing..."
end
# That was refreshing...

try_with_timeout(2.0) do
  sleep 3.0
  puts "Yawn..."
end
# Took too long!