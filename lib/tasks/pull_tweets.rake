desc "Pull Starred Tweets"
task :pull_starred_tweets do
  Testimony.pull_tweets
end