class Salesman < ActiveRecord::Base
  attr_accessible :last_name, :name
  has_many :sales
end
