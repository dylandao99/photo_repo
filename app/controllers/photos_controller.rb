class PhotosController < ApplicationController
  def public
    @photos = Photo.all.select {|photo| photo.is_public}
  end

  def private
    @photos = current_user.photos.all
  end

  def create
    params[:images].each do |image|
      params[:photo][:image] = image
      current_user.photos.create(params.require(:photo).permit(:name, :description, :is_public, :image))
    end
    redirect_to root_path
  end

  def new
    @photo = current_user.photos.build
  end
end
