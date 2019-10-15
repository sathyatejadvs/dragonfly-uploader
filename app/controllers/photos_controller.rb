class PhotosController < ApplicationController
	def index
		@photos = Photo.all
	end

	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.new(photo_params)
		if @photo.save?
			redirect_to photos_path
		else
			render :new
		end
	end

	def destroy
	end

	private

	def photo_params
		parms.require(:photo).permit(:avatar, :title)
	end
end