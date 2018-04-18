class FeedsController < ApplicationController
def index
  
end

def new
  @feed = Feed.new
end


def create
  @feed = Feed.new(feed_params)
 
  @feed.save
  redirect_to @feed
end


private
  def feed_params
    params.require(:feed).permit(:description)
  end
end
