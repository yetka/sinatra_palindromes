class Word
  def initialize (string)
    @string = string
  end

  def palindrome?
    reverse_letters = []
    letters = @string.split(//)
    letters.each do |letter|
      reverse_letters.unshift(letter)
    end
    new_string = reverse_letters.join("")
    @string.eql?(new_string)
  end
end
