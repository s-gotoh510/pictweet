class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order("created_at DESC")
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    Tweet.create(tweet_params)
  end
  
  private
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text)
  end
end
