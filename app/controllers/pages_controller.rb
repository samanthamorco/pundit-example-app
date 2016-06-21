class PagesController < ApplicationController

  def index
    @pages = Page.all
    
  end

  def show
    @page = Page.find(params[:id])
    authorize @page
  end
end
