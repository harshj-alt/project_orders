class Product < ApplicationRecord
  belongs_to :user
  has_many :line_items
  has_many :orders, through: :line_items

  validates :user_id, presence: true



  def self.search(search)
    if search
      where(["pname LIKE?","%#{search}%"])
    else
      all
    end
  end 
end
