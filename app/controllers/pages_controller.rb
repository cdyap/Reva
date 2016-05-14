class PagesController < ApplicationController
  	def dashboard
  		@monthlyparameters = ActiveRecord::Base.connection.execute("select distinct(date_format(actual_date_of_farrowing, '%Y-%m')) from litters")
  		@building_headcount = Array.new(17, 0)
  		@headcounts = Headcount.all
  		@dates = Headcount.select('DISTINCT headcount_date').order('headcount_date DESC')
  	end
  
	def redirect_to_account_dashboard
	  redirect_to pages_dashboard_url
	end
end
