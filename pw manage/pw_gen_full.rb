def generate_password(length)
    characters = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + ['!', '@', '#', '$', '%', '^', '&', '*']
    password = (1..length).map { characters.sample }.join
  end
  
  def calculate_entropy(password)
    character_set_size = ('a'..'z').to_a.length + ('A'..'Z').to_a.length + ('0'..'9').to_a.length + 8 # Number of special characters
    entropy = password.length * Math.log2(character_set_size)
  end
  
  puts "Enter the desired password length:"
  password_length = gets.chomp.to_i
  
  password = generate_password(password_length)
  entropy = calculate_entropy(password)
  
  puts "Generated Password: #{password}"
  puts "Entropy: #{entropy} bits"
  