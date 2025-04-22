Rails.application.routes.draw do
  get("/square/new", {:controller => "square",:action =>"square_new_display"})
  get("/square/result", {:controller => "squareresult", :action => "square_result_display"})
  get("/square_root/new", {:controller => "squareroot", :action => "square_root_display"})
  get("/square_root/result", {:controller => "squarerootresult", :action => "square_rootresult_display"})
  get("/random/new",{:controller =>"random", :action =>"random_display"})
  get("/random/result",{:controller =>"randomresult", :action =>"random_result_display"})
  get("/payment/new",{:controller =>"payment", :action =>"payment_display"})
  get("/payment/result",{:controller =>"paymentresult", :action =>"payment_result_display"})
end
