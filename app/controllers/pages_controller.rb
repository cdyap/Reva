class PagesController < ApplicationController
  	def dashboard
  		@monthlyparameters = ActiveRecord::Base.connection.execute("select distinct(date_format(actual_date_of_farrowing, '%Y-%m')) from litters")
  		@yearlyparameters = ActiveRecord::Base.connection.execute("select distinct(date_format(actual_date_of_farrowing, '%Y')) from litters")
  		
  		@building_headcount = Array.new(17, 0)
  		@headcounts = Headcount.all
  		removals = CauseOfRemoval.uniq.pluck(:date_of_removal)
  		removals.each do |date|
  			date = Date.parse(date.to_s)
  		end
  		@dates =  Headcount.uniq.pluck(:headcount_date) + removals #CauseOfRemoval.uniq.pluck(Date.parse('date_of_removal'))#Headcount.select('DISTINCT headcount_date').select(:headcount_date).take + CauseOfRemoval.select('DISTINCT date_of_removal').select(:date_of_removal)
  		@dates = @dates.sort_by {|date|date}.reverse!
  	end
  
	def redirect_to_account_dashboard
	  redirect_to pages_dashboard_url
	end
end
