# Incorporate custom matchers and utilities from rspec
# Originally written to overcome bug with have_selector for title...

require Rails.root.join("spec/support/utilities.rb")

module LoginSteps
  def login(name, password)
    visit signin_path
    fill_in('Email', with: name)
    fill_in('Password', with: password)
    click_button('Sign in')
  end
end

World(LoginSteps)
