class Cart < ApplicationRecord
	belongs_to :user
	has_many :join_table_carts_items
	has_many :items, through: :join_table_carts_items

	def subtotal
		price = 0.0
		self.items.each do |item|
			price += item.price
		end
		return price
	end
end
