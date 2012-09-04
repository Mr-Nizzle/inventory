class Product < ActiveRecord::Base
  attr_accessible :name, :qty
  has_many :product_sales
end
