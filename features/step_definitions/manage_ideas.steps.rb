Given /^there are (\d+) innovation ideas$/ do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given /^another user creates an innovation idea with the title "(.*?)"$/ do |title|
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

When /^the user creates an innovation idea with title "(.*)"$/ do |title|
  create_new_idea(title, 'Amazing invention that works like this...')
end

When /^the user clicks the link "(.*?)"$/ do |link|
  click_link(link)
end

Then /^the user should see a link "(.*)"$/ do |link|
  page.should have_link(link)
end

Then /^the page should have content "(.*?)"$/ do |content|
  page.should have_content(content)
end

When /^the user visits the idea's page$/ do
  visit innovation_idea_path(@innovation_idea)
end
When /^the user gives the idea a rating of (\d+) stars$/ do |score|
  @user.rate_idea!(@innovation_idea, score) 
end
