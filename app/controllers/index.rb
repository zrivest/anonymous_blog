require 'pry'

get '/' do
  @all_posts = Post.order('created_at DESC')
  erb :index
end

get "/delete/:id" do
  Post.find(params[:id]).destroy
  redirect '/'
end
#=============POST=============#
