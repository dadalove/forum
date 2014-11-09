class Topic < ActiveRecord::Base
  belongs_to :user
  has_many :top_category_ships
  has_many :categories, :through => :top_category_ships
  has_many :replies

  validates_presence_of :title                   #空白必填
  validates_presence_of :content                 #空白必填

  


end
