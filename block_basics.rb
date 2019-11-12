# 1.step(9, 2) { |n| puts "\n#{n} situp\n#{n} pushup\n#{n} chinup" }

desserts = { "chocolate" => 1.00, "vanilla" => 0.75, "cinnamon" => 1.25 }
# $2.0 for a cup of chocolate.

desserts.each { |treat, price| puts "$#{price * 2} for a cup of #{treat}" }