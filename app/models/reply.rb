class Reply < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user

  validates_presence_of :content         #空白必填
end
