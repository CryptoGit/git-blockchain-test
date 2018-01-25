MINERS_REWARD = 50

transactions = `cat txn`.strip.lines.compact

puts "transactions:"
puts transactions

puts "Verifying transactions"

# currently we only support miners rewards, no user->user transactions
exit 1 unless transactions.length == 1

transactions.each do |transaction|
  sender, recipient, amount = transaction.split(' ')

  exit 1 unless sender == "MINING"
  exit 1 unless amount = MINERS_REWARD
end

puts "Seems legit to me"
