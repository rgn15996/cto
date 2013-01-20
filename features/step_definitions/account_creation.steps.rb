Given /^I try to create an account with password "(.*?)"$/ do |password|
  visit signup_path
  
  fill_in "Name", with: 'John Q User'
  fill_in "Email", with: 'user123@example.com'
  fill_in "Password", with: password
  fill_in "Confirmation", with: password
  click_button "Create"
end

Then /^I should see that the password is "(.*?)"$/ do |password_status|
  if password_status == "invalid"
    page.should have_content("error")
  else
    page.should have_content("Welcome to the Account CTO app")
  end
end
