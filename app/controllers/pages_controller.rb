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
  
  def export_cardograph
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
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "cardograph",   # Excluding ".pdf" extension.
          layout: 'pdf.html.erb',
          template: 'pages/cardograph.pdf.erb',
          show_as_html: params[:debug].present?,
          orientation:                    'Landscape',
          margin:  {   top:               5,                     # default 10 (mm)
                    bottom:            5,
                    left:              5,
                    right:             5 }
      end
    end
  end

  def export_monthlyparameters
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
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "monthly_parameters",   # Excluding ".pdf" extension.
          layout: 'pdf.html.erb',
          template: 'pages/monthly.pdf.erb',
          show_as_html: params[:debug].present?,
          orientation:                    'Landscape',
          margin:  {   top:               5,                     # default 10 (mm)
                    bottom:            5,
                    left:              0,
                    right:             0 }
      end
    end
  end

  def export_yearlyparameters
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
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "yearly_parameters",   # Excluding ".pdf" extension.
          layout: 'pdf.html.erb',
          template: 'pages/yearly.pdf.erb',
          show_as_html: params[:debug].present?,
          orientation:                    'Landscape',
          margin:  {   top:               5,                     # default 10 (mm)
                    bottom:            5,
                    left:              5,
                    right:             5 }
      end
    end
  end

	def redirect_to_account_dashboard
	  redirect_to pages_dashboard_url
	end
end
