class WelcomeController < ApplicationController
  def index
    @subreddits = Subreddit.all
  end
end
