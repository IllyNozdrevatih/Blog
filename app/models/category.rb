class Category < ApplicationRecord
  validates :id , presence: true
  has_and_belongs_to_many :articles
end
