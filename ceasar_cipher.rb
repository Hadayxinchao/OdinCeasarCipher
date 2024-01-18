def caesar_cipher(string, shift)
  alphabet_upper = ("A".."Z").to_a
  alphabet_lower = ("a".."z").to_a
  arr = string.split("")
  arr = arr.map do |character|
    if alphabet_lower.include?(character)
      index = (alphabet_lower.find_index(character) + shift) % alphabet_lower.length
      character = alphabet_lower[index]
    elsif alphabet_upper.include?(character)
      index = (alphabet_upper.find_index(character) + shift) % alphabet_upper.length
      character = alphabet_upper[index]
    else
      character = character
    end
  end
  return arr.join("")
end

puts "Enter a String: "
inputString = gets.chomp
puts "Enter shift factor: "
key = (gets.chomp.to_i) % 26
encryptedString = caesar_cipher(inputString, key)
puts encryptedString
