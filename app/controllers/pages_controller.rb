class PagesController < ApplicationController
  def index
    @notes = Page.all
  end

  def show
    @note = Page.find(params[:id])
  end

  def new
    @note = Page.new
  end
end