class Cart < ActiveRecord::Base
  
  has_many :line_items, dependent: :destroy
  
  def add_course(course_id)
    current_item = line_items.find_by_course_id(course_id) 
    unless current_item  
          current_item = line_items.build(course_id: course_id)
    end
      current_item
  end
 
  def total_price
    line_items.to_a.sum { |item| item.course.price }
  end
  
  
end
