class Edition < Post
  
  acts_as_gmappable address: 'location', process_geocoding: false
  
  # Associations
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :attendances
  has_many :users, through: :attendances
  
  # Attributes (whitelist)
  attr_accessible :doors_open_at
  attr_accessible :location
  attr_accessible :edition_number
  
  # Scopes
  scope :upcoming,  where(['doors_open_at > ?', Time.zone.now + 6.hours]).order('doors_open_at ASC')
  scope :archive,   where(['doors_open_at < ?', Time.zone.now]).order('doors_open_at DESC')
  scope :past,      lambda { |n| archive.order('doors_open_at DESC').limit(n) }


  def starts_at
    doors_open_at
  end
  
  def upcoming?
    doors_open_at > Time.zone.now
  end
  
end
