class User < ActiveRecord::Base
  extend Enumerize

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many  :comments, :as => :commentable, dependent: :destroy

  enumerize :gender, in: [:male, :female], default: :male

  validates :name, presence: true
  validates :email, presence: true

  has_attached_file :avatar,
    styles: { medium: "300x300>", thumb: "100x100>", small: "50x50>" },
    default_url: "/assets/users/avatars/:style/missing.png"
    
  validates_attachment :avatar,
    presence: true,
    content_type: { content_type: /\Aimage\/.*\Z/ },
    size: { less_than: 5.megabyte }
end
