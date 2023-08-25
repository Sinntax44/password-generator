#fucking check if this shit works if not delete the entire fucking thing

require 'digest'

def generate_password(length)
  characters = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + ['!', '@', '#', '$', '%', '^', '&', '*']
  password = (1..length).map { characters.sample }.join
end

def hash_password(password)
  hashed_password = Digest::SHA256.hexdigest(password)
end

puts "Enter the desired password length:"
password_length = gets.chomp.to_i

password = generate_password(password_length)
hashed_password = hash_password(password)

puts "Generated Password: #{password}"
puts "SHA-256 Hashed Password: #{hashed_password}"
