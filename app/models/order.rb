class Order < ApplicationRecord
  attr_accessor :user_attributes, :address_attributes



  #belongs_to :address
  belongs_to :user

  has_many :lineitems, dependent: :destroy
  has_many :products, through: :lineitems
  accepts_nested_attributes_for :lineitems
  accepts_nested_attributes_for :products


  # has_many :products, through: :line_items
  #has_many :products




end
