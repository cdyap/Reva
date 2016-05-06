class CauseOfRemovalsController < ApplicationController
autocomplete :pig, :ear_notch_number, :extra_data => [:date_of_birth, :breed, :sex], :full => true, :display_value => :autocorrect_values
	def new 
		@cause_of_removal = CauseOfRemoval.new 		
	end 

	def create 
		@cause_of_removal = CauseOfRemoval.new(cause_of_removal_params)

		if @cause_of_removal.save 
			redirect_to cause_of_removal_path
		else 
			render :new
		end 
	end 

	def show 

	end
	
	def index 
		# @cause_of_removals = Cause_of_removal.all
	end

	def cause_of_removal_params 
		params.require(:cause_of_removal).permit!
	end 

end
