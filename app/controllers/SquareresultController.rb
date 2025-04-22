class SquareresultController < ApplicationController
  def square_result_display  
    @input = params.fetch("input").to_f
    @output = @input**2
    render({:template => "my_templates/square_result"})
  end
end 
