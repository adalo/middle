class LocalitiesController < ApplicationController
	def index
		@localities = Locality.all
	end

	def import
		Locality.import(params[:file])
		redirect_to root_url, notice: "Products Imported."
	end
end
