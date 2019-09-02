class Item < ApplicationRecord
  validates :title, presence: true, length: { in: 3..100 }
  validates :description, presence: true, length: { minimum: 10 }
  validates :price, presence: true, numericality: { greater_than: 0 }

  has_many :join_table_carts_items
	has_many :carts, through: :join_table_carts_items
end
