require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')

get('/') do
  @list = Word.all
  erb(:words)
end

post('/') do
  word = params["word"]
  Word.new({:word=> word}).save
  @list = Word.all
  erb(:words)
end

post('/clear') do
  Word.clear
  @list = Word.all
  erb(:words)
end
