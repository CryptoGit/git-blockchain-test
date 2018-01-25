current_sha = `git rev-parse HEAD`.strip.to_i(16)
difficulty_sha = `/bin/sh ../difficulty_factor`.strip.to_i(16)

puts "Block SHA: #{current_sha}"
puts "Difficulty SHA: #{difficulty_sha}"

if(current_sha < difficulty_sha)
  puts "Block SHA is good!"
else
  puts "Block SHA is not below difficulty SHA"
  exit 1
end
