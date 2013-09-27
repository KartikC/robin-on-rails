class FeedController < ApplicationController
  def index
    client = Twitter::Client.new(
  :oauth_token => session[:oauth_token],
  :oauth_token_secret => session[:oauth_secret])
    
    if(params[:format] == 'home')
      $user = client.user
    else
      $user = client.user(params[:format])
    end
    
    @username = $user.name
    @user_link_color = $user.profile_link_color
    @user_image_url = $user.profile_image_url(size = :normal)
    @background_image_url = $user.profile_banner_url(size = :web)
    @profile = $user.description
    @status = $user.status
    @num_tweets = $user.statuses_count
    @num_followers = $user.followers_count
    @num_following = $user.friends_count
    
    
    @tweets = []
    if(params[:format] == 'home')
      client.home_timeline(:count => 10).each do |status|
        @tweets << status
      end
    else
      client.user_timeline(params[:format], :count => 10).each do |status|
        @tweets << status
      end
    end
    
  end
end
