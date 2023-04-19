def is_multiple_of_3_or_5?(current_number)
    current_number = current_number.to_i
    if current_number % 3 == 0 or current_number % 5 == 0
        return true
    else
        return false
    end
end

def sum_of_3_or_5_multiples(final_number)
    if final_number.is_a?(Integer) && final_number >= 0
        final_sum = 0 #cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro
    
        for current_number in (0...final_number)  # Ici, lance une boucle qui va de zéro au chiffre "final_number" EXCLU (car on est sur du strictement inférieur)
       
            if is_multiple_of_3_or_5?(current_number)
                final_sum = final_sum + current_number # si la réponse est "true", alors je rajoute la valeur de "current_number" à la variable "final_sum".
            end
        end

        return final_sum #on retourne la variable qui contient la somme du tout
    else
        return "I only take integers."
    end
end
  
puts sum_of_3_or_5_multiples(11) #=> 33
puts sum_of_3_or_5_multiples(10) #=> 23