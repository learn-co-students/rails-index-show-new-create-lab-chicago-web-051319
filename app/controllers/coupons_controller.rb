class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    @new_coupon = Coupon.new
  end

  def create
    self.new
    @new_coupon.store = params[:coupon][:store]
    @new_coupon.coupon_code = params[:coupon][:coupon_code]
    @new_coupon.save
    redirect_to coupon_path(@new_coupon)
  end
end
