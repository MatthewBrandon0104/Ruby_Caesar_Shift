message = "what a string!"

def caesar(string, shift)
        alpha = ["a", "b", "c", "d", "e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
        
        array = string.split("")
        old_index = 0;
        
        i = 0;
        while i < array.length
            if alpha.index(array[i]) == nil
                i += 1
                next
            
            else 
                old_index = alpha.index(array[i])
                
                if shift % 26 == 0
                    i += 1
                    next
                
                elsif  shift > 26
                    remainder = shift % 26
                    if old_index - remainder < 0
                        array[i] = alpha[26 - (remainder - old_index)]
                        i += 1
                    else 
                        array[i] = alpha[old_index - remainder]
                        i += 1
                    end
                    
                elsif old_index - shift < 0
                        array[i] = alpha[26 - (shift - old_index)]
                        i += 1
                
                else 
                    array[i] = alpha[old_index - shift]
                    i += 1
                end
                    
                
            end
        end
    
        puts array.join("")
end

caesar(message, 75)