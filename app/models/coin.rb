class Coin < ActiveRecord::Base
  belongs_to :user_id
  attr_accessible :condition, :for_sale, :for_trade, :image, :market_value, :name, :origin
  validates :condition, :numericality => { :less_than_or_equal_to => 70}
end
