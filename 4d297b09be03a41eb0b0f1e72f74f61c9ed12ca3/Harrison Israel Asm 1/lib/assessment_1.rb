# Define your methods here.
require "byebug"

def string_map!(str, &prc) 
   (0...str.length).each do |i|
       str[i] = prc.call(str[i])
   end
   str
end

def three?(arr, &prc)
    $counter = 0
    arr.each do |ele|
        if prc.call(ele)
            $counter += 1
        end
    end
    if $counter == 3
        return true
    end
    false
end

def nand_select(arr, prc1, prc2)
    new_array = []
    arr.each do |ele|
        if prc1.call(ele) && prc2.call(ele)
        else
            new_array << ele
        end
    end
    new_array
end

def hash_of_array_sum(hash)
    sum = 0
    hash.each do |key, value|
        sum += value.sum
    end
    sum
end

def abbreviate(sentence)
    new_sentence = []
    sentence = sentence.split(" ")
    sentence.each do |word|
        if word.length > 4
            new_sentence << remove_vowels(word)
        else
            new_sentence << word
        end
    end

    new_sentence.join(" ")
end

def remove_vowels(word)
    new_word = ""
    vowels = "aeiouAEIOU"
    word.each_char do |char|
        new_word += char if !vowels.include?(char)
    end
    new_word
end
    


def hash_selector(hash, *arg)
    len = arg.length
    new_hash = Hash.new
    hash.each do |key, val|
        (0...len).each do |i|
            if key == arg[i]
                new_hash[key] = hash[arg[i]]
            end
        end
    end
    new_hash
end
