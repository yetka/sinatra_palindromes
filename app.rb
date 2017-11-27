require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/palindrome')


get('/') do
  erb(:input)
end

get('/output') do
  @word = params.fetch("user_word")

  new_word = Word.new(@word)
  if new_word.palindrome?
    @result = "is a palindrome."
  else
    @result = "is not a palindrome."
  end

  erb(:output)
end
