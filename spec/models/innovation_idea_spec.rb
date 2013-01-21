require 'spec_helper'

describe InnovationIdea do
  let (:user) { FactoryGirl.create(:user) }
  before do
    @idea = FactoryGirl.build(:innovation_idea, user: user, 
                              title: "Great new idea", description: "Lets do amazing")
  end

  subject { @idea }



  it { should respond_to(:title) }
  it { should respond_to(:description) }
  it { should respond_to(:user_id) }

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