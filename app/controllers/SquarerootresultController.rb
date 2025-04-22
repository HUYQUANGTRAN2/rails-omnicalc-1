class SquarerootresultController < ApplicationController
  def square_rootresult_display
    @input = params.fetch("input").to_f
    @output = @input**0.5  
    render({:template => "my_templates/square_root_result"})
  end
end 
