#!/usr/bin/env ruby

class SendTweet

  def initialize (tweet)
    @tweet = tweet
  end

  def perform
		log_in_to_twitter
		send_tweet
	end

private

  def log_in_to_twitter
      @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "95062M0UShvrETyxqpnZavPoe"
      config.consumer_secret     = "supOIufJlhD2slrXZsnzfhzWXEO2zdldyS5ghhem4PQf2a9vOT"
      config.access_token        = "885126648730988545-4H6IXL3mq4eUz2ngxiAmKnYjD24X4IO"
      config.access_token_secret = "O8UuvngeouTq8JQ4qdK5gwNSe149M54fu4ed1P0R94DLA"
    end
  end

  def send_tweet
    @client.update(@tweet)
  end

end
