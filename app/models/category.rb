class Category < ApplicationRecord
  has_many :goals, :dependent => :destroy
  belongs_to :user

  validates :title, presence: true
  validates :user_id, presence: true
end
