class Order < ApplicationRecord
  belongs_to :user
  has_many :join_items_orders
  has_many :items, through: :join_items_orders

	def subtotal
		price = 0.0
		self.join_items_orders.each do |item_order|
			price += item_order.total_price
		end
		return price
	end

	def number_of_articles
		articles = 0
		join_items_orders.each do |join|
			articles += join.quantity
		end
		return articles
	end
end
