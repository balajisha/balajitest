class UsersController < ApplicationController
  def new
 
@user=User.new
end
def create
  	params.permit!
 @user =User.new(params[:user])
 	if @user.save
 		redirect_to '/sessions/new', :notice=>"signed up"
	else
		render "new"
	end

  end
end
