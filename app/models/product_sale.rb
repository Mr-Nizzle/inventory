class ProductSale < ActiveRecord::Base
  belongs_to :sale
  belongs_to :product
  attr_accessible :qty

  after_create :decrement_stock

  def decrement_stock
  	self.product.update_attribute("qty", (product.qty - self.qty))
  end
end
