Twitter.configure do |config|
  config.consumer_key = '####'
  config.consumer_secret = '####'
end

TweetStream.configure do |config|
  config.consumer_key = '####'
  config.consumer_secret = '####'
  config.auth_method        = :oauth
end