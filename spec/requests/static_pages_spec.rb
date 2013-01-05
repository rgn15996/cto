require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the content 'Account Client Technology Office'" do
      visit '/static_pages/home'
      page.should have_content('Account Client Technology Office')
    end
    it "should have the correct title" do
      visit '/static_pages/home'
      # puts page.html
      page.should have_title("Account CTO | Home")
  	end
  end
  describe "Help Page" do
    it "should have the content 'Help for the ACTO Application'" do
      visit '/static_pages/help'
      page.should have_content('Help for the ACTO Application')
    end
    it "should have the correct title" do
      visit '/static_pages/help'
      # puts page.html
      page.should have_title("Account CTO | Help")
  	end
  end
  describe "About Page" do
    it "should have the content 'About the ACTO Application'" do
      visit '/static_pages/about'
      page.should have_content('About the ACTO Application')
    end
    it "should have the correct title" do
      visit '/static_pages/about'
      # puts page.html
      page.should have_title("Account CTO | About")
  	end
  end
end
