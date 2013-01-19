

Given /^a user visits the signin page$/ do
  visit signin_path
end

When /^the user submits invalid signin information$/ do
  login('nosuchuser', 'notarealpassword')
end

Then /^the user should see an error message$/ do
  page.should have_selector('div.alert.alert-error')
end

Given /^the user has an account$/ do
  @user = User.create(name: "Example User", email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar")
end

Given /^a signed in user$/ do
  @user = User.create(name: "Example User", email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar")
  login(@user.email, @user.password)
end

When /^the user submits valid signin information$/ do
  login(@user.email, @user.password)
end

Then /^the user should see their profile page$/ do
  page.should have_title(full_title(@user.name))
end

Then /^the user should see a signout link$/ do
  page.should have_link('Sign out', href: signout_path)
end

When /^the user visits their profile page$/ do
  visit user_path(@user.id)
end

Then /^the user should see their initiatives displayed$/ do
  page.should have_content "Initiatives"
end