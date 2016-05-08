class CauseOfRemovalsController < ApplicationController
		autocomplete :pig, :ear_notch_number, :full => true, :display_value => :autocorrect_values, scope: [:removed]
	def new 
		@cause_of_removal = CauseOfRemoval.new 		
	end 
	def get_autocomplete_items(parameters)
   		 super(parameters).where(:removed => params[:removed?])
    end


	def create 
		@cause_of_removal = CauseOfRemoval.new(cause_of_removal_params)


		if @cause_of_removal.save 
			# Pig.where(pig_id: @cause_of_removal.pig_id)
			redirect_to cause_of_removals_path
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
