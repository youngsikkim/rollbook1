class Course < ActiveRecord::Base
  
  has_many :enrollments, dependent: :destroy
  has_many :lectures, dependent: :destroy
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
    
  validates :name, :description, :user_id, :status, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.1}
 
  def ensure_not_referenced_by_any_line_item 
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false 
    end
  end
 
end
