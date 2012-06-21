class EditionsController < ApplicationController
  before_filter :find_edition

  def index
    @editions = Edition.scoped
  end
  
  def show
  end

  private
  def find_edition
    @edition = Edition.find(params[:id]) if params[:id]
  end
end