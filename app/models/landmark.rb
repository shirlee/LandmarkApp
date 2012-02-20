class Landmark < ActiveRecord::Base
  
  validates :name, :presence => true, :uniqueness => true
  
end
