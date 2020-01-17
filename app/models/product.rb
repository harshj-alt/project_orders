class Product < ApplicationRecord
  belongs_to :user
  has_many :lineitems, dependent: :destroy
  has_many :orders, through: :lineitems

  validates :user_id, presence: true

  attr_accessor :orders_attributes, :lineitems_attributes


  def self.search(search)
    if search
      where(["pname LIKE?","%#{search}%"])
    else
      all
    end
  end
end
