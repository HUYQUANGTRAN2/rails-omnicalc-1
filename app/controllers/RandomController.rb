class RandomController < ApplicationController
  def random_display  
    render({:template => "my_templates/random_new"})
  end
end 
