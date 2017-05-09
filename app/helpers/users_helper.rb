module UsersHelper
  def user_has_no_posts?
    @user.posts.count === 0
  end

  def user_has_no_comments?
    @user.comments.count === 0
  end

  def list_favorites
    @post = Post.find(params[:post_id])
    @favorite = current_user.favorites.find(params[:id])
  end

end
