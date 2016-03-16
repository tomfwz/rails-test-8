class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one   :profile,   dependent: :destroy
  has_many  :comments,  dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true

  has_attached_file :avatar,
    styles: { medium: "300x300>", thumb: "100x100>" },
    default_url: "/assets/users/avatars/:style/missing.png"
  validates_attachment :avatar,
    presence: true,
    content_type: { content_type: /\Aimage\/.*\Z/ },
    size: { less_than: 5.megabyte }
end
