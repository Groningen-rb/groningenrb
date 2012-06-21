class Edition < ActiveRecord::Base
  
  # Attributes (whitelist)
  attr_accessible :description
  attr_accessible :starts_at
  
  # Scopes
  scope :upcoming,  where(['starts_at > ?', Time.zone.now + 6.hours]).order('starts_at ASC')
  scope :past,      lambda { |n| where(['starts_at < ?', Time.zone.now]).order('starts_at DESC').limit(n) }
  
end
