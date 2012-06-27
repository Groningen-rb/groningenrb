class Testimony < ActiveRecord::Base
  
  # Attributes (whitelist)
  attr_accessible :content
  attr_accessible :screen_name
  attr_accessible :tweet_id
  
  
  def self.pull_tweets
    puts "Pulling tweets!"
    Twitter.favorites('groningenrb', since_id: maximum(:tweet_id)).each do |tweet|
      unless exists?(tweet_id: tweet.id.to_s)
        create!(
          tweet_id:     tweet.id.to_s,
          content:      tweet.text,
          screen_name:  tweet.user.screen_name
        )
      end
    end
  end
end
