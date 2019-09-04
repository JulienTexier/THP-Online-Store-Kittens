class Order < ApplicationRecord
  belongs_to :user
  has_many :join_items_orders
  has_many :items, through: :join_items_orders

  def subtotal
		price = 0.0
		self.items.each do |item|
			price += item.price
		end
		return price
	end
end
