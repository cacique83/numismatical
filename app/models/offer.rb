class Offer < ActiveRecord::Base
  belongs_to :coin_id
  belongs_to :trader
  belongs_to :trader_coin_id
  attr_accessible :offer_price
end
