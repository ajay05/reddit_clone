class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:comment][:post_id])
    @subreddit = @post.subreddit
    @user = current_user
    @comment = Comment.build_from(
                 @post, @user.id,
                 params[:comment][:body]
               )

    if @comment.save
      redirect_to subreddit_post_path(@subreddit, @post)
    else
      render 'posts/new'
    end
  end
end