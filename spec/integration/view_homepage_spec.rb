require 'spec_helper'

feature 'Viewing the homepage' do
	scenario 'see the message hello' do
		visit root_path
		expect(page).to have('hello')
	end
end
