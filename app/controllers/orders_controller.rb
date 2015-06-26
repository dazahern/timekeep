class OrdersController < ApplicationController
  before_action :require_user, only: [:new, :create]

  def index
  @watch = Watch.find(params[:watch_id])
  require_owner(@watch)
  @order = @watch.orders
  end

  def show
    @order = Order.find(params[:id])
    @watch = @order.watch
    require_owner(@order)
  end

  def new
  	@order = Order.new
  end

  def create
  	@watch = Watch.find(params[:watch_id])
  	@order = @watch.orders.new(order_params)
  	@order.user = current_user

  	if @order.save_with_payment
      flash[:success] = "Thanks for ordering #{@watch.name}."
      redirect_to @order
  		
  	else
      flash[:error] = "Your payment could not be processed."
      render :new
  		
  	end
  end

private
def order_params
	params.require(:order).permit(:stripe_token)
	
end

end
