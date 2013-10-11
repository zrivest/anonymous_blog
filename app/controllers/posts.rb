require 'pry'

get '/posts/new' do
  erb :new_post_form
end

get '/posts/:id' do
  @post = Post.find_by_id(params[:id])
  if @post.tags[0] == nil
    @post.tags << Tag.create(subject: "No Tags :(")
  end
  erb :single_post
end

get '/posts/:id/edit' do
  @post_to_edit = Post.find_by_id(params[:id])
  if request.xhr?
    erb :_edit_form, layout: false
  else
    erb :edit_post
  end
end

#==========POST==========#

post '/posts' do 
  new_post = Post.create(title: params["title"], body: params["content"])
  new_post.tags << Tag.create(subject: params["subject"])
  redirect "/"
end

post "/edit/:id" do
  edited_post = Post.find(params[:id])
  # binding.pry
  edited_post.update_attributes(title: params["title"], body: params["content"])
  # binding.pry
  edited_post.tags[0].update_attributes(subject: params["subject"])
  redirect "/posts/#{edited_post.id}"
end