class Group < ApplicationRecord
  has_and_belongs_to_many :entities, dependent: :destroy
  belongs_to :user

  validates :name, presence: true, length: { maximum: 250 }
  validates :icon, presence: true
end
