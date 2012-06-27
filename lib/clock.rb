require File.expand_path('../../config/boot',        __FILE__)
require File.expand_path('../../config/environment', __FILE__)
require 'clockwork'
include Clockwork

every(1.day, 'Pull Favorited Tweets', at: ['09:00', '15:00', '21:00']) { Testimony.pull_tweets }