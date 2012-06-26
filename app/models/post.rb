class Post < ActiveRecord::Base
  
  paginates_per 5     # Pagination by Kaminari
  
  # Attributes (whitelist)
  attr_accessible :title          # Article, Edition
  attr_accessible :body           # Article, Edition
  attr_accessible :rendered_body  # Article, Edition
  
  # Callbacks
  before_save :render_body
  
  
  private
  
  def render_body
    require 'redcarpet'
    renderer = Redcarpet::Render::HTML.new
    extensions = { fenced_code_blocks: true }
    redcarpet = Redcarpet::Markdown.new(renderer, extensions)
    self.rendered_body = redcarpet.render self.body
  end
  
end
