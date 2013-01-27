

Given /^a user visits the signin page$/ do
  visit signin_path
end

When /^the user submits invalid signin information$/ do
  login('nosuchuser', 'notarealpassword')
end

Then /^the user should see an error message$/ do
  page.should have_selector('div.alert.alert-error')
end

Given /^the user "(.*)" has an account with password "(.*)"$/ do | username, password|
  @user = FactoryGirl.create(:user, email: username, 
                             password: password, password_confirmation: password)
end

Given /^a signed in user$/ do
  @user = FactoryGirl.create(:user)
  login(@user.email, @user.password)
end

Given /^the user is signed in as "(.*)" with password "(.*)"$/ do |username, password|
  login(username, password)
end

When /^the user submits valid signin information$/ do
  login(@user.email, @user.password)
end

Then /^the user should see their profile page$/ do
  page.should have_title(full_title(@user.name))
end

Then /^the user should see the signed (in|out) homepage$/ do |status|
  if status == 'in'
    page.should have_content('View my profile')
  else
    page.should have_content('Welcome to the Account')
  end
end

Then /^the user should see a signout link$/ do
  page.should have_link('Sign out', href: signout_path)
end

When /^the user visits their profile page$/ do
  visit user_path(@user.id)
end

Then /^the user should see their innovation ideas displayed$/ do
  page.should have_content "Innovation Ideas"
end