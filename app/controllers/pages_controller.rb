class PagesController < ApplicationController
  
  # pages GET pages#index
  def index
    @notes = Page.all
  end

  def show
    @note = Page.find(params[:id])
  end

  def new
    @note = Page.new
  end

  def edit
    @note = Page.find(params[:id])
  end

  # patch
  def update
    @note = Page.find(params[:id])

    if @note.update(page_params)
      redirect_to pages_path
    else
      render :edit
    end
  end

  # POST pages#create
  def create
    @note = Page.new(page_params)

    if @note.save
      redirect_to pages_path
    else
      render :new
    end

  end

  def destroy
    Page.find(params[:id]).destroy
    redirect_to pages_path
  end


  private

  def page_params
    params.require(:page).permit(:subject, :author, :body)
  end

end