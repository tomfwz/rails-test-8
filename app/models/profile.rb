class Profile < ActiveRecord::Base
  has_many :comments, :as => :commentable, dependent: :destroy
  belongs_to :user

  validates :user_id, presence: true
end