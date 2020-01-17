class Lineitem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  attr_accessor :products_attributes

end
