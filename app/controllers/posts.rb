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

get '/edit/view_all_to_edit' do
  @all_posts = Post.order('created_at DESC')
  erb :view_all_posts_to_edit
end

#==========POST==========#

post '/posts' do 
  new_post = Post.create(title: params["title"], body: params["content"])
  new_post.tags << Tag.create(subject: params["subject"])
  redirect "/"
end