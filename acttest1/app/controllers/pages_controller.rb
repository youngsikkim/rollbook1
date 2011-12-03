class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def course
     @title = "course"
  end
  
  def lecture
     @title = "lecture"
  end
  

end
