class StudentsController < ApplicationController
	layout 'admin'
	
	def index
		list
		render('menu')
	end
	def menu
		
	end
	def list
		@studs=Students.order("Students.name ASC")
		
	end
	def show
		@stud=Students.find(params[:id])
	end
	def new
		flash[:notice]=""
		@stud=Students.new
	end
	def create
		@stud=Students.new(params[:stud])
		if @stud.save
			flash[:notice]="Student record created."
		redirect_to(:action=>'list')
	else
		render('new')
	end
	end
	def edit
		@stud=Students.find(params[:id])
		
	end
	def update
		@stud=Students.find(params[:id])
		if @stud.update_attributes(params[:stud])
			flash[:notice]="Student updated."
			redirect_to(:action=>'show',:id=>@stud.id)
		else
			render('edit')
		end
		
	end
	def delete
		@stud=Students.find(params[:id])
		
	end
	def destroy

		Students.find(params[:id]).destroy
		flash[:notice]="Student record destroyed "
		redirect_to(:action=>'list')
		
	end

end
