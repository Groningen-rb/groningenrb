require File.expand_path('../../config/boot',        __FILE__)
require File.expand_path('../../config/environment', __FILE__)
require 'clockwork'
include Clockwork

# every(1.minute, 'Pull Favorited Tweets', at: '00:00') { Testimony.pull_tweets }



every(1.minute, 'Pull Favorited Tweets') { Testimony.pull_tweets }