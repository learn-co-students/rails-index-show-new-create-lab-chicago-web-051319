class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def new
  end

  def show
    @coupon = Coupon.find_by(params[:id])
  end

  def create
    @this_coupon = Coupon.new
    @this_coupon.update(coupon_code: params["coupon"]["coupon_code"], store: params["coupon"]["store"])
    redirect_to coupon_path(@this_coupon)
  end
end
