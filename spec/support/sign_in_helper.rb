module SignInHelpers

	def sign_up(user)
		visit new_user_path
		fill_in 'Username', with: user.username
		fill_in 'Email', with: user.email
		fill_in 'Password', with: user.password_digest
		click_button 'Sign up'
	end
end

RSpec.configure do |config|
	config.include SignInHelpers
end
