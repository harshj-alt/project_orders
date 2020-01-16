class Product < ApplicationRecord
  belongs_to :user
  has_many :order_table
  has_many :orders, through: :order_table

  validates :user_id, presence: true



  def self.search(search)
    if search
      where(["pname LIKE?","%#{search}%"])
    else
      all
    end
  end 
end
