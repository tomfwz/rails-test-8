class Profile < ActiveRecord::Base
  extend Enumerize
  
  has_many :comments, :as => :commentable, dependent: :destroy
  belongs_to :user

  enumerize :gender,  in: [:male, :female], default: :male

  validates :user_id, presence: true
end