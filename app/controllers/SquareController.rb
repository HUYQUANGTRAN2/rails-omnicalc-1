class SquareController < ApplicationController
  def square_new_display  
    render({:template => "my_templates/square_new"})
  end
end 
