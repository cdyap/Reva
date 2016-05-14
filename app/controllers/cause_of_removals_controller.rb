class CauseOfRemovalsController < ApplicationController
	autocomplete :pig, :ear_notch_number, :extra_data => [:date_of_birth], :full => true, :display_value => :autocorrect_values, scope: [:removed]
	before_action :authenticate_user!
	
	def new 
		@cause_of_removal = CauseOfRemoval.new 		
	end 

	def get_autocomplete_items(parameters)
   		 super(parameters).where(:removed => params[:removed])
    end


	def create 
		@cause_of_removal = CauseOfRemoval.new(cause_of_removal_params)

		if @cause_of_removal.save!
				@pig = Pig.find(@cause_of_removal.pig_id)
				@pig.update_column(:removed, 1)
				@pig.save
			redirect_to cause_of_removals_path
		else 
			render :new
		end 
	end 

	def edit
		@cause_of_removal = CauseOfRemoval.find(params[:id])
	end

	def update
		@cause_of_removal = CauseOfRemoval.find(params[:id])
		if @cause_of_removal.update(cause_of_removal_params)
			redirect_to cause_of_removals_path
		else
			render :edit
		end
	end
	
	def index 
		@cause_of_removals = CauseOfRemoval.all
	end

	def cause_of_removal_params 
		params.require(:cause_of_removal).permit(:pig_id, :date_of_removal, :sale, :weight_on_removal, :remarks)
	end 

end
