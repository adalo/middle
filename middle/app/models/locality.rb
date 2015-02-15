class Locality < ActiveRecord::Base
	default_scope { order('longitude ASC') }
	belongs_to :country
	geocoded_by :name
	after_validation :geocode,
  		:if => lambda{ |obj| obj.name_changed? }

  	def self.import(file)
  		CSV.foreach(file.path, encoding: "iso-8859-1:UTF-8", headers: true) do |row|
  			Locality.create! row.to_hash
  		end
  	end
end
