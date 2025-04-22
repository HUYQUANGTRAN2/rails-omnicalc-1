class RandomresultController < ApplicationController
  def random_result_display  
    @minimum = params.fetch("minimum").to_f
    @maximum = params.fetch("maximum").to_f
    @random_number = rand(@minimum..@maximum)
    render({:template => "my_templates/random_new_result"})
  end
end 
