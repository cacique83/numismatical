class Order < ActiveRecord::Base
  belongs_to :user
  attr_accessible :number
  has_many :items
  has_many :products, through: :items


end
