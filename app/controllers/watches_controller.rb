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
  end

  def edit
  end
end
