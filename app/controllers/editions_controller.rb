class EditionsController < ApplicationController
  before_filter :find_edition

  def index
    @editions = Edition.archive.page params[:page]
  end
  
  def show
  end
  
  def new
    @edition = Edition.new
    authorize! :manage, @edition
  end
  def create
    @edition = Edition.new(params[:edition])
    authorize! :manage, @edition
    if @edition.save
      redirect_to @edition, notice: "Editie ##{@edition.id} is aangemaakt."
    else
      render :new
    end
  end

  private
  def find_edition
    @edition = Edition.find(params[:id]) if params[:id]
  end
end