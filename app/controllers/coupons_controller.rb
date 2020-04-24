class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end


    def new
        @coupon = Coupon.new
    end



    def create
        @coupon = Coupon.new
        @coupon.coupon_code = params[:coupon_code]
        @coupon.store = params[:store]
        @coupon.save
        redirect_to coupon_path(@coupon)
    end
    def show
        @coupon = Coupon.find(params[:id])
    end

    def edit
        @coupon = Coupon.find(params[:id])
        render :edit
    end

    def destroy
        Coupon.find(params[:id]).destroy
        redirect_to coupons_path
    end
end