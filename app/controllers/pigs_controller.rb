class PigsController < ApplicationController
	autocomplete :pig, :ear_notch_number, :extra_data => [:date_of_birth], :full => true, :display_value => :autocorrect_values, scope: [:sex]
	
	def new 		
		@pig = Pig.new
		@earnotch = Pig.set_ear_notch - Integer(DateTime.now.strftime('%y'))*100000
	end 

	def get_autocomplete_items(parameters)
    	super(parameters).where(:sex => params[:sex])
  	end

	def create 
		@pig = Pig.new(pig_params)
		
		if @pig.save
			redirect_to pigs_path, notice: "Pig record #{@pig.ear_notch_number.to_s[2..-1]} successfully created."
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
