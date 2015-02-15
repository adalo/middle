require "rails_helper"

feature "Importing localities" do
	
	scenario "User imports a valid csv file with Sherbrooke, NS (pop 325), Toronto, ON (pop 2,700,000) and Victoria, BC (pop 200,000)" do
		file_path = 'spec/fixtures/files/valid_locality_import_spec.csv'
		visit localities_path
		attach_file('file', file_path)
		click_on "Import"
		expect(page).to have_css("tr", :count => 4)
		expect(page).to have_css("td", :text => "326")
		expect(page).to have_css("td", :text => "45.140556")
		# OPTIMIZE currently hitting the geocoder API every time a locality is created in a test. Consider stubbing out test results to minimize these calls.
	end

	scenario "User imports an invalid csv file" do
		file_path = 'spec/fixtures/files/invalid_locality_import_spec.csv'
		visit localities_path
		attach_file('file', file_path)
		click_on "Import"
		expect(page).to have_css("div.alert-error")
	end

	# TODO there's an opportunity above to refactor an import_csv helper
end