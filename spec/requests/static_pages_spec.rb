require 'spec_helper'

describe "Static Pages" do
  let(:base_title) {"Account CTO | "}
  subject {page}

  describe "Home Page" do
  	before {visit root_path}

    it { should have_title(full_title(''))} 
  	it { should have_selector('h1', text: 'Welcome to the Account Client Technology Office')}
    it { should_not have_title(full_title('Home')) }
  end
  describe "Help Page" do
  	before {visit help_path}

    it { should have_content('Help for the ACTO Application') }
    it { should have_title(full_title('Help'))}
  end

  describe "About Page" do
  	before {visit about_path}

    it { should have_content('About the ACTO Application') }
    it { should have_title(full_title('About'))}
  end
  describe "Contact Page" do
  	before {visit contact_path}

    it { should have_content('Contact Information for the ACTO Application') }
    it { should have_title(full_title('Contact'))}
  end
end
