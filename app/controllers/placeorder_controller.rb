class PlaceorderController < ApplicationController
  def placeorder
    if session[:customer_info]["name"] != nil
        name = session[:customer_info]["name"]
    else
        name = session[:customer_info][:name]
    end

    if session[:customer_info]["email"] != nil
        email = session[:customer_info]["email"]
    else
        email = session[:customer_info][:email]
    end

    if session[:customer_info]["address"] != nil
        address = session[:customer_info]["address"]
    else
        address = session[:customer_info][:address]
    end

    if session[:customer_info]["location_id"] != nil
        location_id_temp = session[:customer_info]["location_id"]
    else
       location_id_temp = session[:customer_info][:location_id]
    end
    location_id = location_id_temp

    if session[:customer_info]["postcode"] != nil
        postcode = session[:customer_info]["postcode"]
    else
        postcode = session[:customer_info][:postcode]
    end



   customer_location = Location.where(:id => location_id).first

   puts name
   puts email
   puts address
   puts location_id
   new_cust = Customer.new( :name =>  name,
                            :email => email,
                            :address => address,
                            :postalCode => postcode
                          )
    new_cust.location = customer_location
    new_cust.save

    init_status = Status.where(:id => 1).first
    tax_rate = Location.find(location_id).tax_rate
    new_order = Order.new(:tax_rate => tax_rate)

    new_order.customer= new_cust
    new_order.status = init_status
    new_order.save
    puts new_order.inspect

    items_in_cart = session[:items_in_cart]
    items_in_cart.each do |id, quantity|
      new_lineitem = LineItem.new(:quantity => quantity)
      flower = FlowerItem.where(:id => id).first
      price = flower.price
      new_lineitem.flower_item = flower
      new_lineitem.order = new_order
      new_lineitem.price = price
      new_lineitem.save

    end

  end
  def my_order
  
  end
end
