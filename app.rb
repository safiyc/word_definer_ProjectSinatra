require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')

get('/') do
  @blank_field_error = ""
  @list = Word.all
  erb(:words)
end

post('/') do
  word = params["word"]
  @blank_field_error = ""
  if (word == "")
    @blank_field_error = "Please enter a word."
  else
    Word.new({:word=> word}).save
  end
  @list = Word.all
  erb(:words)
end

post('/clear') do
  Word.clear
  @blank_field_error = ""
  @list = Word.all
  erb(:words)
end
