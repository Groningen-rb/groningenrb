class User < ActiveRecord::Base
  
  # Attributes (whitelist)
  attr_accessible :bio
  attr_accessible :email
  attr_accessible :gravatar_id
  attr_accessible :hireable
  attr_accessible :location
  attr_accessible :name
  attr_accessible :provider
  attr_accessible :uid
  
  
  def self.from_omniauth(auth)
    where(auth.slice('provider', 'uid')).first || create_from_omniauth(auth)
  end
  
  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider     = auth['provider']
      user.uid          = auth['uid']
      user.name         = auth['info']['name']
      user.email        = auth['info']['email']
      user.location     = auth['extra']['raw_info']['location']
      user.gravatar_id  = auth['extra']['raw_info']['gravatar_id']
      user.bio          = auth['extra']['raw_info']['bio']
      user.hireable     = auth['extra']['raw_info']['hireable']
    end
  end
end
