class Article < ApplicationRecord
  has_attached_file :image, styles: { big: "900x300" , medium: "750x300>", thumb: "300x200>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :name,:description, presence:true
  belongs_to :user
  has_and_belongs_to_many :categories
end