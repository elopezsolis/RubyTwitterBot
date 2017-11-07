#!/usr/bin/env ruby
require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "aqKXD7BG6p1iXwk0oS8W4Jeqx"
  config.consumer_secret     = "Misycc2RZS30IZ1QX68q8MmSg9mM5zOIk1qKMmIHIObufpHCzd"
  config.access_token        = "927633971906691072-sxT0G43rsjUftDRSSsQNKWXXcHooUjU"
  config.access_token_secret = "RM1WW5ExJBxxCt1hQnfmBAuFfrqKrnNcAx7yaCRIeM91q"
end

# def collect_with_max_id(collection=[], max_id=nil, &block)
#   response = yield(max_id)
#   collection += response
#   response.empty? ? collection.flatten : collect_with_max_id(collection, response.last.id - 1, &block)
# end

# def client.get_all_tweets(user,max_id)
#   collect_with_max_id do |max_id|
#     options = {count: 10, include_rts: true}
#     options[:max_id] = max_id unless max_id.nil?
#     user_timeline(user, options)
#   end
# end

# client.get_all_tweets("jabumeri",10)
# client.search("jabumeri").take(10).each do |tweet|
#   puts tweet.text
# end

client.update('Glad to follow @jabumeri, #1 twitter fan <3')