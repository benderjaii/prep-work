def repeat?(year)
  digits = year.to_s.chars.sort #get all the digits and sort them
  digits == digits.uniq #if the digits are the same as the array of digits with no repeats
end

def no_repeats(year_start, year_end)
  (year_start..year_end).to_a.delete_if{|x| x if !repeat?(x)} #delete all years which have repeating digits
end

def repeat_algorithmic?(year)
  unique_chars_contained = [] #initialize array for comparison
  
  year.to_s.each_char do |char|
    unique_chars_contained << char unless unique_chars_contained.include? char #if the char isn't there already add it
  end
  
  return unique_chars_contained.join == year.to_s #return whether or not the unique chars contained is equal the year
end