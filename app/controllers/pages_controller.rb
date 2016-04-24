class PagesController < ApplicationController
  def dashboard
  end
  def dlr
  end

	def redirect_to_account_dashboard
	  redirect_to pages_dashboard_url
	end
end
