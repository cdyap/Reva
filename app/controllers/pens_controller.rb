class PensController < ApplicationController
	def new 		
	end 

	def create 
		@headcount = Headcount.new(headcount_params)

		if @headcount.save 
			redirect_to pens_path
		else 
			render :new
		end 
	end 

	def edit_all
		#@building = Building.find(params[:id])
		@pens = Pen.where(building_number: params[:pen_id])
		@building = [@pens.first.building_number, @pens.first.building_name]
		@pens.each do |pen| 
			pen.headcounts.build
		end
	end

	def update_all
		params['pen'].keys.each do |id|
		    @pen = Pen.find(id.to_i)
		    @headcount = Headcount.new(pen_id: id.to_i, headcount: params['pen'][id]['headcount']['headcount'].to_i, headcount_date: DateTime.parse(params['headcount_date']['headcount_date']))
		    @headcount.save
		    @pen.headcounts << @headcount
		end
		redirect_to dashboard_path
	end

	def update_each_pen(parameters)

	end

	def headcount
		@date = Date.parse(params[:headcount_date][:headcount_date])
		@buildings = Pen.select('DISTINCT building_number, building_name')
	end

	def index 
		# @pen = Pen.new
		# @pens = Pen.all
		@building_headcount = Array.new(17, 0)

		# (1..16).each do |building|
		# 	building_total = 0
		# 	Pen.where(building_number: building).each do |pen|
		# 		#building_total = building_total + pen.headcounts.daily_headcount
		# 	end
		# 	@building_headcount[building] = building_total
		# end
		# @total_count = @pens.sum("daily_headcount")

		# @buildings = Pen.select('DISTINCT building_number, building_name')

		#select distinct headcount_date from headcounts order by desc;
		@headcounts = Headcount.all
		@dates = Headcount.select('DISTINCT headcount_date').order('headcount_date DESC')
		@latest_date = Headcount.maximum('headcount_date')
	end

	def pig_params 
		params.require(:pen).permit!
	end 

	def headcount_params
		params.require(:headcount).permit!
	end
end
