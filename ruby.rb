def caesar(string, number)
    alpha = "abcdefghijklmnopqrstuvwxyz".split("")
    array = string.split("")
    new_array = []
    
    array.each do |character|
            is_cap = false
            if character == character.upcase
                character.downcase!
                is_cap = true
            end
            if alpha.index(character) == nil
                new_array.push(character)
                next
            end
            old_index = alpha.index(character)
            new_array.push(alpha[shift(old_index, number)])
            new_array[-1] = new_array[-1].upcase if is_cap == true
    end
puts new_array.join("")
end


def shift(current, factor)
    new_index = current
    is_pos = true
    is_pos = false if factor < 0
    
    if is_pos == true
        i = 0
        while i < factor
                new_index += 1
                new_index = 0 if new_index == 26
                i += 1
        end
    
    else
        i = factor
        while i < 0
                new_index -= 1
                new_index = 25 if new_index == -1
                i += 1
        end
    end
    return new_index
end

caesar("What a String!", 5)
caesar("Bmfy f Xywnsl!", -5)