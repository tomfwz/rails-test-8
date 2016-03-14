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
end