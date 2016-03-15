require 'rails_helper'

describe Post do
  context 'validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :content }
    it { is_expected.to validate_presence_of :user_id }
  end

  context 'associations' do
    it { is_expected.to have_many :comments }
    it { is_expected.to belong_to :user }
  end

  context 'has many comments' do
    let!(:tom)      { create(:user, name: 'Tom', email: 'tom@futureworkz.com') }
    let!(:james)    { create(:user, name: 'James', email: 'james@futureworkz.com') }
    let!(:post)     { create(:post, title: 'I love Ruby', content: 'Ruby is awesome...', user: tom) }
    let!(:comments) { create_list(:comment, 3, user: james, message: 'Awesome', commentable: post) }

    it 'returns the comments of a post' do
      expect(post.comments).to eq comments
    end
  end
end