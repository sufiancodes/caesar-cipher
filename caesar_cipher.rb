# Taking user input message to encrypt
puts "Enter the message"
message = gets.chomp
# Getting key from the user
puts "Enter the Shift"
shift = gets.chomp.to_i

# take the message and turn it in to array of character
arry = message.chars.map{|char| char.ord}
shifted_message = arry.map {|value| value + shift}
encryption = shifted_message.map{|value| value.chr}
final_message = encryption.join
# before i put the below line in action i first need to solve the wraping problem
# result = final_message.gsub('!',' ')
# p result
