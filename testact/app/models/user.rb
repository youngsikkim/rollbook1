class User < ActiveRecord::Base
  has_many :enrollments, dependent: :destroy
  
  validates :name, presence: true, uniqueness: true 
  has_secure_password
  
  
  def add_course_to_user(course_id)
     current_item = enrollments.find_by_course_id(course_id) 
     unless current_item  
           current_item = enrollments.build(course_id: course_id, status: "enroll")
     end
       current_item
   end
end
