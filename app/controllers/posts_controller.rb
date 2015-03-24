class PostsController < ApplicationController
  before_action :find_subreddit

  def index
    @posts = @subreddit.posts
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params.merge(subreddit_id: @subreddit.id))

    if @post.save
      redirect_to subreddit_post_path(@subreddit, @post)
    else
      render :new
    end
  end

  private

  def find_subreddit
    @subreddit = Subreddit.find(params[:subreddit_id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
