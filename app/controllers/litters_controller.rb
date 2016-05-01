class LittersController < ApplicationController
	autocomplete :pig, :ear_notch_number, :extra_data => [:date_of_birth], :full => true, :display_value => :autocorrect_values, scope: [:sex]

  def create 
  		@litter=Litter.new(litter_params)
  		if @litter.save
 	 		redirect_to litters_path
  		else
  			render 'litters#index'
	  	end
  	end

    def get_autocomplete_items(parameters)
      super(parameters).where(:sex => params[:sex])
    end

  	def index
  		@litter = Litter.new
  		@litter.pigs.build
  		@litters = Litter.all
  	end

  	def litter_params
  		params.require(:litter).permit(:dam_id, :parity_number, :sire_id, :date_bred, :due_to_farrow, :actual_date_of_farrowing, :mummified_piglets, :stillborn_piglets, :litter_size_at_birth, pigs_attributes: [:pig_id, :ear_notch_number, :sex, :birth_weight, :_destroy])
  	end

end
