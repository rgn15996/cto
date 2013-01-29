require 'spec_helper'

describe Rating do
  
  let(:rater) {FactoryGirl.create(:user)}
  let(:rated) {FactoryGirl.create(:innovation_idea)}
  let(:rating) {rater.ratings.build(rated_id: rated.id, score: 3)}

  subject {rating}

  it { should be_valid }

  describe "accessible attributes" do
    it "should not allow access to rater_id" do
      expect do
        Rating.new(rater_id: rater.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end    
  end

  describe "rater methods" do
    it { should respond_to(:rater) }
    it { should respond_to(:rated) }

    its(:rater) { should == rater }
    its(:rated) { should == rated }
  end

  describe "with no rater_id should be invalid" do
    before {rating.rater_id = nil }
    it { should_not be_valid }
  end
  describe "with no rated_id should be invalid" do
    before {rating.rated_id = nil }
    it { should_not be_valid }
  end

  describe "rating an idea" do
    before do
      rater.save
      rater.rate_idea!(rated, 4)
      @rated_idea = rater.ratings.find_by_rated_id(rated.id)
    end
    
    subject { @rated_idea }
    its(:score) { should == 4 }

  end

  describe "recording whether user rated idea" do
    before do
      rater.save
      rater.rate_idea!(rated, 3)
      @user = rater
    end

    subject { @user} 
    its(:rated_ideas) { should include(rated)}
    it { should be_rated_idea(rated) }
  end
end