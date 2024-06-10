class Product < ApplicationRecord
  validates :title, presence:true
  validates :price, presence:true
  validates :stock_quantity, presence:true
end

class Product < ApplicationRecord
  belongs_to :category
  validates :title, :price, :stock_quantity, presence: true
end