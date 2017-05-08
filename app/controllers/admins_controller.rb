class AdminsController < ApplicationController
	def new

	end
	 def create
    admin= Admin.find_by_username(params[:username])
    if admin && admin.authenticate(params[:password])
    	session[:username_id] = admin.id
      redirect_to accesses_path
    else
    	render 'admins/new'
    end
  end

  def destroy
    session[:username_id] = nil
    redirect_to root_url
  end
end
