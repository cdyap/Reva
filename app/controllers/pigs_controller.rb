class PigsController < ApplicationController
	def new 		
		@pig = Pig.new
	end 

	def create 
		@pig = Pig.new(pig_params)

		if @pig.save 
			redirect_to new_pig_path
		else 
			render :new
		end 
	end 

	def index 
		@pig = Pig.new
	end

	def pig_params 
		params.require(:pig).permit!
	end 
end
