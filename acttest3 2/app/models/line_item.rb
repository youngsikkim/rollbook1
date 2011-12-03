class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :course
  belongs_to :cart
end
