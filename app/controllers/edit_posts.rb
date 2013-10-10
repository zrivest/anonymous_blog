get '/edit/view_all_to_edit' do
  @all_posts = Post.order('created_at DESC')
  erb :view_all_posts_to_edit
end