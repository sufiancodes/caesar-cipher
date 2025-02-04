# Taking user input message to encrypt
puts "Enter the message"
message = gets.chomp
# Getting key from the user
puts "Enter the Shift"
shift = gets.chomp.to_i

# take the message and turn it in to array of character and assigning ascii
arry = message.chars.map{|char| char.ord}

# adding shift to the message while avoiding the spaces
shifted_message = arry.map do |value|
  if value.ord != 32
    shifted_value = value+shift
    if shifted_value > 90
      shifted_value -= 26
    end
  else
    value
  end
end


# bringing the shifted ascii value back to the form of character
encryption = shifted_message.map{|value| value.chr}

# turning that array of shifted character making it string
final_message = encryption.join

# print the final encrypted
puts final_message
