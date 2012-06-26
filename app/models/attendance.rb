class Attendance < ActiveRecord::Base
  
  # Acce
  belongs_to :edition
  belongs_to :user
  
  # Attributes (whitelist)
  attr_accessible :edition
  attr_accessible :user
  
end
