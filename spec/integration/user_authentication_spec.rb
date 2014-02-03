require 'spec_helper'

feature 'allow users to sign up with username and email' do
	scenario 'user visits the sign up page and creates an accout' do
		user = build(:user)
		sign_up(user)
		
		expect(page).to have_content(user.username)
	end

	scenario 'user can sign up then sucessfully logout' do
		user = build(:user)
		sign_up(user)

		click_link 'Sign out'

		expect(page).to_not have_content(user.username)
	end

	scenario 'an existing user can sign in' do
		user = build(:user)
		sign_up(user)
		click_link 'Sign out'

		click_link 'Sign in'
		fill_in 'Email', with: user.email
		fill_in 'Password', with: 'password'
		click_button 'Sign in'

		expect(page).to have_content(user.username)
	end
end
