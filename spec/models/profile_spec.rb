require 'rails_helper'

describe Profile do
  context 'validations' do
    it { is_expected.to validate_presence_of :user_id }
    it { is_expected.to enumerize(:gender).in(:male, :female) }
  end

  context 'associations' do
    it { is_expected.to have_many :comments }
    it { is_expected.to belong_to :user }
  end

  context 'has many comments' do
    let!(:tom)      { create(:user, name: 'Tom', email: 'tom@futureworkz.com') }
    let!(:james)    { create(:user, name: 'James', email: 'james@futureworkz.com') }
    let!(:profile)  { create(:profile, display_name: 'Tom Ta', designation: 'Developer', user: tom) }
    let!(:comments) { create_list(:comment, 3, user: james, message: 'Awesome', commentable: profile) }

    it 'returns the comments of a profile' do
      expect(tom_profile.comments).to eq comments
    end
  end
end