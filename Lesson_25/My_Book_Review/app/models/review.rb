class Review < ActiveRecord::Base
  attr_accessible :book_id, :review, :user_id
  belongs_to :user
end
