require 'sinatra'
#require 'pry'

get '/' do
  @ingredients = File.readlines('ingredients.csv')
  erb :index, locals: {ingredient: @ingredients}
end

post '/' do
  ingredient = params['ingredient']

  File.open('ingredients.csv', 'a') do |file|
    file.puts(ingredient)
  end

  redirect '/'
end
