class EditionsController < ApplicationController
  
  before_filter :authenticate!, only: [:new, :create, :edit, :update]
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
    @edition.author = current_user
    if @edition.save
      redirect_to @edition, notice: "Editie ##{@edition.id} is aangemaakt."
    else
      render :new
    end
  end
  
  def edit
    authorize! :manage, @edition
  end
  
  def update
    authorize! :manage, @edition
    if @edition.update_attributes(params[:edition])
      redirect_to [:edit, @edition], notice: 'Editie is opgeslagen'
    else
      render :edit
    end
  end
  
  def destroy
    authorize! :manage, @edition
    @edition.destroy
    redirect_to :root, notice: 'Editie verwijderd.'
  end


  private
  
  def find_edition
    @edition = Edition.find(params[:id]) if params[:id]
  end
end