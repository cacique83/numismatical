class Item < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  attr_accessible :quantity, :product

  after_create :calculate_stock

  def calculate_stock
  	product.stock = product.stock - quantity
  	product.save
  end
end
