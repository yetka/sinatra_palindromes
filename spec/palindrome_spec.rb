require('rspec')
require('palindrome')
require('pry')

describe(Word) do
  describe('palindrome?') do
    it("return false for the word hthat is not a palindrome") do
      new_word = Word.new("hat")
      expect(new_word.palindrome?).to(eq(false))
    end
    it("return true id word is a pallindrome") do
      new_word = Word.new("kayak")
      expect(new_word.palindrome?).to(eq(true))
    end
  end
end
