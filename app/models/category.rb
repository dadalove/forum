class Category < ActiveRecord::Base
  has_many :top_category_ships
  has_many :topics, :through => :top_category_ships

  validates_presence_of :name              #空白必填
end
