def letter_count(str)
  letters = str.gsub(' ', '').downcase.chars #get all the letters in the string
  
  #inject letters with an initial value of an empty hash
  #then set the name, value pair to be the letter and the 
  #number of times that letter appears. Pass the hash back 
  #to the enumerator
  letters.inject( {} ) {|hash, symbol| hash[symbol] = letters.count(symbol); hash}
end

def letter_counter(str)
  character_count = {} #initialize an empty hash
  
  str.downcase.gsub(' ', '').each_char do |char| #for each character (ignoring spaces)
    if character_count[char] #if the character is in the hash, add one to the count
      character_count[char] += 1
    else
      character_count[char] = 1 #otherwise this is the first time the character is in the hash
    end
  end
  
  return character_count
end
