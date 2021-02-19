class CouponsController < ApplicationController

    def index
        @coupons=Coupon.all
    end

    def new
        
    end

    def create
        @coupon = Coupon.create(store:params[:coupon][:store],coupon_code:params[:coupon][:coupon_code])
        redirect_to coupons_path
    end

    def show
        @coupon=Coupon.find_by(params[:id])
        
    end
end
