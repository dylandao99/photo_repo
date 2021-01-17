class PhotosController < ApplicationController
  skip_before_action :authorized, only: [:public]

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
    redirect_to '/user/photos'
  end

  def new
    @photo = current_user.photos.build
  end

  def delete
    puts params[:photo_ids]
    current_user.photos.where(:id => params[:photo_ids]).delete_all
    redirect_to '/user/photos'
  end
end
