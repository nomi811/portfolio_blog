# frozen_string_literal: true

class PhotosController < ApplicationController # :nodoc:
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_photo, only: %i[show edit update destroy]

  def index
    @photos = Photo.all.order('created_at desc')
  end

  def show; end

  def new
    @photo = Photo.new
  end

  def edit; end

  def create
    @photo = Photo.new photo_params

    if @photo.save
      redirect_to @photo, notice: 'Photo was successfully created.'
    else
      render :new, notice: 'Unable to save photo.'
    end
  end

  def update
    if @photo.update photo_params
      redirect_to @photo, notice: 'Photo was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @photo.destroy
    redirect_to photos_path, notice: 'Photo was successfully destroyed.'
  end

  private

  def set_photo
    @photo = Photo.friendly.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:name, :slug, :image, :remove_image)
  end
end
