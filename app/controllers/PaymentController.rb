class PaymentController < ApplicationController
  def payment_display  
    render({:template => "my_templates/payment"})
  end 
end 
