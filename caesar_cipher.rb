# Taking user input message to encrypt
puts 'Enter the message'
message = gets.chomp
# Getting key from the user
puts 'Enter the Shift'
shift = gets.chomp.to_i

# take the message and turn it in to array of character and assigning ascii
arry = message.chars.map { |char| char.ord }

# adding shift to the message while avoiding the spaces
shifted_message = arry.map do |value|
  if value != 32 && value != 33 && value != 44 && value != 45 && value != 46 && value != 47 && value != 63
    shifted_value = value + shift
    if value.between?(65, 90) && shifted_value > 90
      shifted_value -= 26
    elsif value.between?(65, 90) && shifted_value < 65
      shifted_value += 26
    elsif value.between?(97, 122) && shifted_value < 97
      shifted_value += 26
    elsif value.between?(97, 122) && shifted_value > 122
      shifted_value -= 26
    end
    shifted_value
  else
    value
  end
end

# bringing the shifted ascii value back to the form of character
encryption = shifted_message.map { |value| value.chr }

# turning that array of shifted character making it string
final_message = encryption.join

# print the final encrypted
puts final_message