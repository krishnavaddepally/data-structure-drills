transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Write Ruby code to find out the answers to the following questions. Be sure to make sure that your output and format matches what is given on the assignment page:

# * What is the value of the first transaction?
puts "The first transaction is: #{transactions.first}"


# * What is the value of the second transaction?
puts "The second transaction is: \n #{transactions[1]}"


# * What is the value of the fourth transaction?
puts "The fourth transaction is: \n #{transactions[3]}"

# * What is the value of the last transaction?
puts "The last transaction is: \n #{transactions[-1]}"

# * What is the value of the second from last transaction?
puts "The second from the last transaction is: \n #{transactions[-2]}"

# * What is the value of the 5th from last transaction?
puts "The fifth from the last transaction is: \n #{transactions[-5]}"

# * What is the value of the transaction with index 5?
puts "The transaction with the index of 5 is: \n #{transactions[5]}"

# * How many transactions are there in total?
puts "The total number of transactions is: \n #{transactions.length}"

# * How many positive transactions are there in total?
initial=0
transactions.each do|positive|
  if positive.to_s.include?("-")
    initial+=1
  end
end
puts "The total number of positive transactions is: \n #{initial}"

# * How many negative transactions are there in total?
negative_transactions=transactions.length-initial
puts "The total number of negative transactions is: \n #{negative_transactions}"


# * What is the largest withdrawal?

all_withdrawls=[]
transactions.each do|number|
  if number.to_s.include?("-")
    all_withdrawls=all_withdrawls.push(number)
  end
end
largest_withdrawl=0
all_withdrawls.each do |number|
  if number<largest_withdrawl #since we are dealing with negative numbers , > is replaced with <
    largest_withdrawl=number

  end
end
puts "The largest withdrawal is:\n  #{largest_withdrawl}"


# * What is the largest deposit?
largest_deposit=0
transactions.each do |num|
  if num>largest_deposit
    largest_deposit=num
  end
end

puts "The largest deposit is: \n #{largest_deposit}"


# * What is the smallest withdrawal?
smallest_withdrawl=all_withdrawls[0]
all_withdrawls.each do |num|
  if num>smallest_withdrawl
    smallest_withdrawl=num
  end
end
puts "The smallest withdrawal is: \n  #{smallest_withdrawl}"


# * What is the smallest deposit?
all_deposits=[]
transactions.each do |num|
  if !num.to_s.include?("-")
    all_deposits=all_deposits.push(num)
  end
end
smallest_deposit=all_deposits[0]
all_deposits.each do |num|
  if num<smallest_deposit
    smallest_deposit=num
  end
end
puts "The smallest deposit is: \n #{smallest_deposit}"

# * What is the total value of all the transactions?
total_value=0
transactions.each do |num|
  total_value+=num
end
puts "The total value of all the transactions is: \n #{total_value}"

# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his all of the transactions in our transactions array have been run?
inital_balance= 239900
final_balance=total_value+inital_balance
puts "Dr. Dre's balance is: \n #{final_balance}"
print "--------------------------------------------- \n "

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

# Write Ruby code to find out the answers to the following questions:

# * How many records are in `best_records`?
best_records.each do |key,value|

end
puts "Total records:#{best_records.length}"

# * Who are all the artists listed?
puts "All of the artists:"
best_records.each do |key,value|
  puts "#{key}"
end
print "--------------------------------------------- \n "

# * What are all the album names in the hash?
puts "All of the albums:"
best_records.each do |key,value|
  puts "#{value}"
end
print "--------------------------------------------- \n "
# * Delete the `Eminem` key-value pair from the list and print an updated list of just the artists.
best_records.each do |num|
  best_records.delete("Eminem")
end
puts "List of artists with Eminem deleted: \n #{best_records}"

print "--------------------------------------------- \n "

# * Add your favorite musician and their best album to the list and print an updated list of all the artists and albums:
best_records[:coldplay] = "A head full of dreams"
puts "My favorite musician added: \n #{best_records}"

print "--------------------------------------------- \n "

# * True or False: `Nirvana` is included in `best_records`

puts "True or False: `Nirvana` is included: \n #{best_records.include?("Nirvana")}"
print "--------------------------------------------- \n "


# * Change `Nirvana`'s album to another and then print the updated list of Artists and Albums.
best_records[:Nirvana]="hello hai"
puts "Nirvana's album updated:#{best_records}"

print "--------------------------------------------- \n "

# * True or False: `Soundgarden` is included in `best_records`?

puts "True or False: `Soundgarden` is included: #{best_records.include?("Soundgarden")}"
print "--------------------------------------------- \n "


# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band and then print the updated list of Artists and Albums.
best_records[:Soundgarden]="A random Album"
puts "Soundgarden added if it's not already there: #{best_records}"
print "--------------------------------------------- \n "

# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
puts "key-value pairs have a key that has a length less than or equal to 6 characters: "

best_records.each do |key,value|
  if key.length<=6
  print "#{key} : #{value}"
  end
end

# * Which key-value pairs have a value that is greater than 10 characters?

puts "key-value pairs have a key that has a length greater than 10 characters: \n "
best_records.each do |key,value|
  if value.length>10
    puts "#{key} : #{value}"
  end
end
