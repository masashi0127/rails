class OrdersController < ApplicationController
  def index
    @orders = Order.page(params[:page]).per(2)
    @prefectures = Prefecture.all
    @orderStatuses = OrderStatus.all
  end
end
