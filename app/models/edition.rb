class Edition < ActiveRecord::Base
  
  paginates_per 5
  
  # Attributes (whitelist)
  attr_accessible :description
  attr_accessible :starts_at
  
  # Callbacks
  before_save :render_description
  
  # Scopes
  scope :upcoming,  where(['starts_at > ?', Time.zone.now + 6.hours]).order('starts_at ASC')
  scope :archive,   where(['starts_at < ?', Time.zone.now]).order('starts_at DESC')
  scope :past,      lambda { |n| archive.order('starts_at DESC').limit(n) }
  
  
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
