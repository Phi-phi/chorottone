class MediasController < ApplicationController
  def index
    @medias = Media.all
  end

  def new
    @media = Media.new
  end

  def edit
    @media = Media.find(params[:id])
  end

  def show
    @media = Media.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def create
    @media = Media.create!(media_params)
    redirect_to action: :index
  end

  def update
    @media = Media.update!(media_params)
    redirect_to action: :index
  end

  def destroy
    @media = Media.find(params[:id]).destroy!
    redirect_to action: :index
  end

  private
  def media_params
    params.require(:media).permit(:author, :image, :audio)
  end
end
