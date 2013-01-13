require 'spec_helper'

describe Initiative do
  let (:user) { FactoryGirl.create(:user) }
  before do
  	@initiative = user.initiatives.build(name: "Whizzy new idea", description: "Great idea")
  end

  subject { @initiative}

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:user_id) }
  it { should be_valid } 


  describe "accessible attributes" do
    it "should not allow access to user_id" do
      expect do
        Initiative.new(user_id: user.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end    
  end

  describe "when user_id is not present" do
    before { @initiative.user_id = nil }
    it { should_not be_valid }
  end

  describe "without name" do
    before { @initiative.name = ' ' }
    it { should_not be_valid }
  end
  
  describe "without description" do
    before { @initiative.description = ' ' }
    it { should_not be_valid }
  end

end
