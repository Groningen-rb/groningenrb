

desc "Pull Starred Tweets"
task pull_starred_tweets: :environment do
  Testimony.pull_tweets
end