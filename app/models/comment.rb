class Comment < ActiveRecord::Base
  has_closure_tree
  
  belongs_to :commentable, polymorphic: true
  belongs_to :user

  validates :message, presence: true
  validates :user_id, presence: true
end