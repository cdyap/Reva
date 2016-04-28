class PagesController < ApplicationController
  def dashboard
  end
  def dailylitterrecord
  	@litter = Litter.new
  end
  
	def redirect_to_account_dashboard
	  redirect_to pages_dashboard_url
	end
end
