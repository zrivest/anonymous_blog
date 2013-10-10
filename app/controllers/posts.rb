require 'pry'

get '/posts/new' do
  erb :new_post_form
end

get '/posts/:id' do
  @post = Post.find_by_id(params[:id])
  erb :single_post
end

#==========POST==========#

post '/posts' do 
  Post.create(title: params["title"], body: params["content"])
  redirect "/"
end