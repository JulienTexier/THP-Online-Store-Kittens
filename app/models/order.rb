class Order < ApplicationRecord

	after_create :new_order_send

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

	def new_order_send
		UserMailer.new_order_email(self).deliver_now
	end

end
