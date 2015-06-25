class WatchesController < ApplicationController
  def index
  	#PAss an instance variable to the view

  	@watches = Watch.all

  	#Rails is rendering the index view
  end

  def show

  	@watch = Watch.find(params[:id])
  end

  def new
    @watch = Watch.new
  end

  def create
    @watch = Watch.new(watch_params)
    if @watch.save
      redirect_to @watch
    else
      render :new
    end
  end

  
  def edit
  end

private
def watch_params
  params.require(:watch).permit(:name, :description, :price_in_pence, :brand, :style, :gender, :pre_owned, :image)
end

end
