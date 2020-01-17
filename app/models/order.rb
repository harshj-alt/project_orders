class Order < ApplicationRecord
  attr_accessor :user_attributes, :address_attributes



  #belongs_to :address
  #belongs_to :user

  has_many :line_items
  #has_many :products, through: :line_items
  has_many :products
  accepts_nested_attributes_for :products




end
