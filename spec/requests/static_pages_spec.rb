require 'spec_helper'

describe "Static Pages" do
  let(:base_title) {"Account CTO | "}

  describe "Home Page" do
    it "should have the content 'Account Client Technology Office'" do
      visit '/static_pages/home'
      page.should have_content('Account Client Technology Office')
    end
    it "should have the correct title" do
      visit '/static_pages/home'
      # puts page.html
      page.should have_title("#{base_title}Home")
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
      page.should have_title("#{base_title}Help")
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
      page.should have_title("#{base_title}About")
  	end
  end
    describe "Contact Page" do
    it "should have the content 'Contact Information for the ACTO Application'" do
      visit '/static_pages/contact'
      page.should have_content('Contact Information for the ACTO Application')
    end
    it "should have the correct title" do
      visit '/static_pages/contact'
      # puts page.html
      page.should have_title("#{base_title}Contact")
  	end
  end
end
