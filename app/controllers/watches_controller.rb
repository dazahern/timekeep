class WatchesController < ApplicationController
  before_action :find_watch, except: [:index, :new, :create]
  before_action :require_user, only: [:new, :create]
  def index
  	#PAss an instance variable to the view

  	@watches = Watch.all

  	#Rails is rendering the index view
  end

  def show

  	
  end

  def new
    @watch = Watch.new
  end

  def create
    @watch = current_user.watches.new(watch_params)
    if @watch.save
      flash[:success] = "Successfully uploaded #{@watch.name} watch to the store"
      redirect_to @watch
    else
      flash[:error] = "Please check the form for errors and try again."
      render :new
    end
  end

  
  def edit
    require_owner(@watch)
  end

  def update
    require_owner(@watch)
    if @watch.update(watch_params)
      flash[:success] = "#{@watch.name} successfully updated."
      redirect_to @watch
      else
        flash[:error] = "Please check the form for errors and try again."
        render :edit
      end
    
  end

  def destroy
    if @watch.destroy
    flash[:success] = "#{@watch.name} was removed"
    redirect_to root_path
    else
      redirect_to root_path
    end
    
  end

private
def watch_params
  params.require(:watch).permit(:name, :description, :price_in_pence, :brand, :style, :gender, :pre_owned, :image)
end

  def find_watch
  @watch = Watch.find(params[:id])
  end

end
