class UserController < ApplicationController
	layout 'admin'
	def index
	render('menu')
	end
	def menu
		
	end
	before_filter :authenticate_user!
 	#user_signed_in?
	#current_user
	#user_session
	def show
		@user=User.find(params[:id])
	end
end
