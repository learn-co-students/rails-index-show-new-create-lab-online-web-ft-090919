#require 'pry'
class CouponsController < ApplicationController

def index 
    @coupons= Coupon.all
end

def new 
    
end

def create 
   
    @coupon = Coupon.new
    
    @coupon.store = params[:coupon][:store]
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.save
     
    redirect_to action: "show", id: @coupon
end

def show 
    
    @coupon = Coupon.find_by_id(params[:id])
    
end

end