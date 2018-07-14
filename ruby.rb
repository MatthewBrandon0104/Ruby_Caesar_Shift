def caesar(string, number)
    alpha = "abcdefghijklmnopqrstuvwxyz".split("")
    array = string.split("")
    new_array = []
    
    array.each do |character|
            old_index = alpha.index(character)
            new_array.push(alpha[shift(old_index, number)])
    end
puts new_array
end


def shift(current, factor)
    new_index = current
    is_pos = true
    if factor < 0
        is_pos = false
    end
    
    if is_pos == true
        i = 0
        while i < factor
                new_index += 1
                if new_index == 26
                    new_index = 0
                end
                i += 1
        end
    
    else
        i = factor
        while i < 0
                new_index -= 1
                if new_index == -1
                    new_index = 25
                end
                i += 1
        end
    end
    return new_index
end

caesar("xyz", 1)