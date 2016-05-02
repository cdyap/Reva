class PensController < ApplicationController
	def new 		
		@pen = Pen.new
	end 

	def create 
		@pen = Pen.new(pen_params)

		if @pen.save 
			redirect_to new_pen_path
		else 
			render :new
		end 
	end 

	def index 
		@pen = Pen.new
	end

	def pig_params 
		params.require(:pen).permit!
	end 
end
