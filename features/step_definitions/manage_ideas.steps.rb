Given /^there are (\d+) innovation ideas$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given /^an innovation idea with the title "(.*?)"$/ do |title|
  another_user = FactoryGirl.create(:user)
  @innovation_idea = FactoryGirl.create(:innovation_idea, user: another_user,
                                         title: title)
end

When /^the user visits the home page$/ do
  visit root_path
end

Then /^the user should see (\d+) innovation ideas displayed$/ do |count|
  page.should have_content( "Ideas (#{count})" )
end

Then /^the user should see an innovation idea with the title "(.*?)"$/ do |title|
  page.should have_content( title )
end

When /^the user creates a valid innovation idea$/ do
  create_new_idea('Wondrous revelation', 'Amazing invention that works like this...')
end

Then /^the user should see their innovation idea$/ do
  visit root_path
  page.should have_content('Wondrous revelation')
end