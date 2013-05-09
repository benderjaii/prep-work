def ordered_vowel?(word)
  vowels = ['a', 'e', 'i', 'o', 'u']
  word_vowels = []
  
  word.each_char do |char|
    word_vowels << char if vowels.include?(char)
  end
  
  word_vowels == word_vowels.sort
end

def ordered_vowel_words(str)
  str.split(" ").select{|word| ordered_vowel?(word.downcase)}.join(" ")
end