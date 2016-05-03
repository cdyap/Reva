class PigsController < ApplicationController
	autocomplete :pig, :ear_notch_number, :extra_data => [:date_of_birth], :full => true, :display_value => :autocorrect_values, scope: [:sex]
	
	def new 		
		@pig = Pig.new
		@maxvalue = ActiveRecord::Base.connection.execute("select max(ear_notch_number) from pigs where pigs.ear_notch_number like '#{DateTime.now.strftime('%y%m')}%'").first[0]
	end 

	def get_autocomplete_items(parameters)
    	super(parameters).where(:sex => params[:sex])
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
