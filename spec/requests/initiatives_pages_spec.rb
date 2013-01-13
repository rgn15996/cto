require 'spec_helper'

describe "Initiatives Pages" do
  
  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { valid_signin user }

  describe "create an initiative" do
    before { visit new_initiative_path }

    describe "with no name" do
      before { fill_in 'Description', with: "Test"}
      it "should not create an initiative" do
        expect { click_button "Create" }.not_to change(Initiative, :count)
        page.should have_content 'error'
      end
    end

    describe "with no description" do
      before { fill_in 'Name', with: "Test"}
      it "should not create an initiative" do
        expect { click_button "Create" }.not_to change(Initiative, :count)
        page.should have_content 'error'
      end
    end

    describe "with valid details" do
      before do
        fill_in 'Name', with: "Test"
        fill_in 'Description', with: "testy"
      end
      it "should create an initiative" do
        expect { click_button "Create" }.to change(Initiative, :count).by(1)
        page.should have_content "New initiative created"
      end
    end

  end
end
