class PensController < ApplicationController
	def index
		@building_headcount = Array.new(17)
		building_total = 0
		(1..16).each do |building|
			Pen.where(building_number: building).each do |pen|
				building_total = building_total + pen.daily_headcount
			end
			@building_headcount[building] = building_total
		end

		@pens = Pen.all
	end
end
