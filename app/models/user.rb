class User < ActiveRecord::Base
  
  # Associations
  has_many :attendances
  has_many :attended_editions, through: :attendances, source: :edition
  has_many :authored_editions, class_name: 'Edition', foreign_key: 'author_id'
  
  # Attributes (whitelist)
  attr_accessible :bio
  attr_accessible :email
  attr_accessible :twitter
  attr_accessible :gravatar_id
  attr_accessible :hireable
  attr_accessible :location
  attr_accessible :name
  attr_accessible :public
  
  # Scopes
  scope :hireable, where(hireable: true)
  
  
  def attends?(edition)
    attended_editions.any?
  end
  
  def attend!(edition)
    attendances.create(edition: edition)
  end
  
  def unattend!(edition)
    attendances.where(edition_id: edition.id).destroy_all
  end
  
  def self.from_omniauth(auth)
    where(auth.slice('provider', 'uid')).first_or_initialize.tap do |user|
      user.provider     = auth.provider
      user.uid          = auth.uid
      user.name         = auth.info.nickname
      user.email        = auth.info.email
      user.location     = auth.extra.raw_info.location
      user.gravatar_id  = auth.extra.raw_info.gravatar_id
      user.bio          = auth.extra.raw_info.bio
      user.hireable     = auth.extra.raw_info.hireable
      user.save!
    end
  end
  
end