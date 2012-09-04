class Sale < ActiveRecord::Base
  belongs_to :salesman
  has_many :product_sales
  
end
