class PigController < ApplicationController
	def new 		
		@pig = Pig.new
	end 

	def create 
		@pig = Pig.new(candidate_params)

		if @pig.save 
			redirect_to dashboard_path
		else 
			render :new
		end 
	end 

	def pig_params 
		params.require(:pig).permit!
	end 
end
