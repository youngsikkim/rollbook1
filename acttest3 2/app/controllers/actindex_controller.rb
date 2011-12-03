class ActindexController < ApplicationController
  def index
    @courses = Course.order(:name)
  end

end
