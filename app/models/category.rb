class Category < ActiveRecord::Base
  has_many :topic
end
