def caesar_cipher(message, key)
    caesar_cipher = " " # On crée une variable vide qui va contenir le message crypté

    message.each_char do |char|


        encrypted_char = (char.ord + key).chr # On calcule le caractère crypté grâce à la fonction .ord (qui renvoie le code ASCII du caractère) et on lui ajoute la clé passée en argument, puis on convertit le résultat en caractère grâce à la fonction .chr
        caesar_cipher = caesar_cipher + encrypted_char # On ajoute le caractère crypté à la chaîne de caractères finale
    end
    return caesar_cipher
end


puts caesar_cipher("j'aime marcher pied nu sous la pluie", 6)
