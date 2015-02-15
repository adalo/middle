class LocalitiesController < ApplicationController
	def index
		@localities = Locality.all
	end

	def import
		import_file 
	rescue
		redirect_with_error("Something went wrong.")
	end

	private

		def redirect_with_notice(notice)
			redirect_to root_url, notice: notice
		end

		def redirect_with_error(error)
			redirect_to root_url, :flash => { :error => error }	
		end

		def import_file
			Locality.import(params[:file])
			redirect_with_notice("Products Imported.")
		end
end
