class SquarerootController < ApplicationController
  def square_root_display  
    render({:template => "my_templates/square_root_new"})
  end
end 
