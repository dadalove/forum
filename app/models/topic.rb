class Topic < ActiveRecord::Base

  belongs_to :user
  has_many :top_category_ships
  has_many :categories, :through => :top_category_ships
  has_many :replies
end
