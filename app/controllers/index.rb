require 'pry'

get '/' do
  @all_posts = Post.order('created_at DESC')
  erb :index
end

#=============POST=============#

