require('pry')
require('rspec')
require('palindrome')

describe('palindrome') do
  it("return false for the word hat") do
    expect(palindrome("hat")).to(eq(false))
  end
  it("return true id word is a pallindrome") do
    expect(palindrome("kayak")).to(eq(true))
  end
end
