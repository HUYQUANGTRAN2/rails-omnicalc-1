class PaymentresultController < ApplicationController
  def payment_result_display  
    raw_apr = (params.fetch("apr").to_f / 100) / 12
    raw_years = params.fetch("years").to_i * 12
    raw_pv = params.fetch("pv").to_i
 
    numerator = raw_apr * raw_pv
    denominator = 1 - (1+raw_apr)**(-raw_years)
    @apr = ((params.fetch("apr").to_f)/12).to_fs(:percentage, { :precision => 4, :multiplier => 1})
    @years = params.fetch("years").to_i * 12
    @pv = params.fetch("pv").to_i.to_fs(:currency)
    @P = (numerator/denominator).to_fs(:currency,{:precision => 2})
    render({:template => "my_templates/payment_result"})
  end
end 
