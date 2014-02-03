require 'spec_helper'

feature 'Viewing the homepage' do
	scenario 'seeing the Title' do
		visit root_path

		expect(page).to have_css 'title', text: 'Shouter'
	end

end
