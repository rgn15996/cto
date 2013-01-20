require 'spec_helper'

describe InnovationIdea do
  
  before do
    @idea = FactoryGirl.build(:innovation_idea)
  end

  subject { @idea }

  # user.email.should == "user@example.com"

  it { should respond_to(:title) }
  it { should respond_to(:description) }
  
  it { should be_valid }

  describe "When title is not present" do
    before { @idea.title = '' }
    it { should_not be_valid }
  end

  describe "When description is not present" do
    before { @idea.description = '' }
    it { should_not be_valid }
  end
end
