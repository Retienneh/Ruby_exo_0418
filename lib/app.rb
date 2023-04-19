def caesar_cipher(string, key)
    encrypted_message = ""
    
    string.each_char do |char|
      if char.match(/[A-Za-z]/) # Vérifie si le caractère est une lettre majuscule ou minuscule
        if char == char.upcase # Vérifie si le caractère est en majuscule
          encrypted_message += ((char.ord - 65 + key) % 26 + 65).chr # Ajoute le décalage à partir du code ASCII de la lettre majuscule A (65)
        else # Le caractère est en minuscule
          encrypted_message += ((char.ord - 97 + key) % 26 + 97).chr # Ajoute le décalage à partir du code ASCII de la lettre minuscule a (97)
        end
      else # Le caractère n'est pas une lettre majuscule ou minuscule
        encrypted_message += char
      end
    end
  
    return encrypted_message
  end
  