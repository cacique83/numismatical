class Product < ActiveRecord::Base
  attr_accessible :description, :image, :name, :price_cents, :stock
  validates :name, uniqueness: true, :length => { :minimum => 2 }

  has_many :items
  after_update :output_something


  def output_something
  	puts "#{name} has been changed"
  end
end
