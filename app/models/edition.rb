class Edition < ActiveRecord::Base
  
  # Attributes (whitelist)
  attr_accessible :description
  attr_accessible :starts_at
  
  # Callbacks
  before_save :render_description
  
  # Scopes
  scope :upcoming,  where(['starts_at > ?', Time.zone.now + 6.hours]).order('starts_at ASC')
  scope :past,      lambda { |n| where(['starts_at < ?', Time.zone.now]).order('starts_at DESC').limit(n) }
  
  
  def upcoming?
    starts_at > Time.zone.now
  end
  
  private
  
  def render_description
    require 'redcarpet'
    renderer = Redcarpet::Render::HTML.new
    extensions = { fenced_code_blocks: true }
    redcarpet = Redcarpet::Markdown.new(renderer, extensions)
    self.rendered_description = redcarpet.render self.description
  end
  
end
