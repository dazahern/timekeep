class UsersController < ApplicationController
  def show
  end

  def new

  	@user = User.new 
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		log_in
      
  		
  	else
      re_render_form
  		
  	end
  end


  def edit
  end


	private
	def user_params
		params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
	end

  def log_in
      # Prevent session hijacking by restting session
      reset_session
      # Log the user in
      session[:user_id] = @user.id
      fash[:success] = "Thnaks for signing up!"
      redirect_to root_path
    
  end

  def re_render_form
      flash[:error] = "Oops, something went wrong. Please check the form for errors and try again"
      render :new
  end

end
