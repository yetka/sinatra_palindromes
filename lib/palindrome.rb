def palindrome(string)
  reverse_letters = []
  letters = string.split(//)
  letters.each do |letter|
    reverse_letters.unshift(letter)
  end
  new_string = reverse_letters.join("")
  if string == new_string
    true
  else
    false
  end
end
