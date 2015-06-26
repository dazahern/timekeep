class SessionsController < ApplicationController
  def new
  	# This can be blank
  end


def create

	@user = User.find_by(email: email)
	if @user.present? and @user.authenticate(password)
  	# Log in here
  	log_in
  	redirect_home
  	
  else
  	re_render_form
  end
end

def destroy
  	# Log out
  	flash[:success] = "Get Lost!"
  	reset_session
  	redirect_to root_path
 end

private
	def log_in
	reset_session
	session[:user_id] = @user.id 
	end

	def email
	email 		= params[:session][:email]
	end

	def password
	password 	= params[:session][:password]
	end

	def redirect_home
	flash[:success] = "Well done you!"
  	redirect_to root_path
 	end

	def re_render_form
	flash[:error] = "Oops, you done fucked up"
  render :new
 end

end
