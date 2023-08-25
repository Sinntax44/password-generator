def generate_password(entropy)
    characters = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + ['!', '@', '#', '$', '%', '^', '&', '*']
    password_length = (entropy * Math.log2(characters.length)).ceil
    password = (1..password_length).map { characters.sample }.join
  end
  
  puts "Enter the desired entropy value:"
  entropy = gets.chomp.to_f
  
  password = generate_password(entropy)
  puts "Generated Password: #{password}"
  