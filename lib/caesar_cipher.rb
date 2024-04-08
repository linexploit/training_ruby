def caesar_cipher(text, key)
    alphabet_uppercase = ('A'..'Z').to_a
    alphabet_lowercase = ('a'..'z').to_a
    cipher_text = ""

    text.each_char do |char|
        if alphabet_uppercase.include?(char)
            index = alphabet_uppercase.index(char)
            new_index = (index + key) % alphabet_uppercase.length
            cipher_text += alphabet_uppercase[new_index]
        elsif alphabet_lowercase.include?(char)
            index = alphabet_lowercase.index(char)
            new_index = (index + key) % alphabet_lowercase.length
            cipher_text += alphabet_lowercase[new_index]
        else
            cipher_text += char
        end
    end

    cipher_text
end

def caesar_cipher(text, key)
    text.gsub(/[a-zA-Z]/) { |char|
       base = char.ord < 97 ? 65 : 97 # 65 est le code ASCII de 'A', 97 de 'a'
       ((char.ord - base + key) % 26) + base
    }.map(&:chr).join
   end
   

         #Le modulo % alphabet.length est utilisé 
         #pour s'assurer que l'index reste dans les limites du 
         #tableau alphabet, en bouclant autour si nécessaire.
         # accède au caractère à la position new_index
         #ajoute ce caractère chiffré à la fin de la chaîne cipher_text


###
#str = "hello"
#array = str.chars.to_a
# array contient ["h", "e", "l", "l", "o"]

#range = 1..5
#array = range.to_a
# array contient [1, 2, 3, 4, 5]

###
