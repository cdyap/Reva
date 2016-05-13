class RegistrationsController < Devise::RegistrationsController
	def new
		@user = User.new
		Rails.logger.info(@user.errors.inspect)
	end
end