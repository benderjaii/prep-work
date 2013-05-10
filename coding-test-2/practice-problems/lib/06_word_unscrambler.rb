def word_unscrambler(str, words)
  str_array = str.split("").sort
  words.delete_if { |word| word.split("").sort != str_array }
end
