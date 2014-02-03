require 'spec_helper'

feature 'creating a new shout' do
	scenario 'creating a text shout' do
		user = build(:user)
		sign_up(user)

		fill_in 'text_shout_body', with: 'testing text shout'
		click_button 'Shout!'

		expect(page).to have_css '.shout'
	end
end
