require 'pry'

get '/' do
  @all_posts = Post.order('created_at DESC')
  erb :index
end

get "/delete/:id" do
  Post.find(params[:id]).destroy
  redirect '/'
end

get '/all/posts' do
  # binding.pry
  @all_posts = Post.all
  if request.xhr?
    erb :_all_posts, layout: false
  else
    erb :all_posts
  end
end
#=============POST=============#
