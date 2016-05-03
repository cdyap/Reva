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
		@pens = Pen.all
		@building_headcount = Array.new(17, 0)

		(1..16).each do |building|
			building_total = 0
			Pen.where(building_number: building).each do |pen|
				building_total = building_total + pen.daily_headcount
			end
			@building_headcount[building] = building_total
		end
		@total_count = @pens.sum("daily_headcount")

		@buildings = Pen.select('DISTINCT building_number, building_name')
		#select distinct building_number, building_name from pens;
	end

	def pig_params 
		params.require(:pen).permit!
	end 
end
