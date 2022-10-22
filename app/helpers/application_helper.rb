module ApplicationHelper
  def current_checkout
    if Checkout.find_by_id(session[:checkout_id]).nil?
      Checkout.new
    else
      Checkout.find_by_id(session[:checkout_id])
    end
  end
end
