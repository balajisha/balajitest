class SessionsController < ApplicationController
	def new 
	 end
	 def create
      user=User.authenticate(params[:email],params[:password])
          if user
          	session[:user_id]=user.id
          	if current_user.detail.blank?

          	redirect_to '/details/new'
          else
			redirect_to '/details/show'
		end
          else
          	flash.now.alert ="Invalid"
          	render 'http://www.google.com'
          end
     end
     def destroy
	 session[:user_id]= nil
	 redirect_to "http://www.amazon.co.in", :notice=> "logged out"
     end

end
