class CauseOfRemovalsController < ApplicationController
	autocomplete :pig, :ear_notch_number, :extra_data => [:date_of_birth, :breed, :sex], :full => true, :display_value => :autocorrect_values
	def index
	end
end
