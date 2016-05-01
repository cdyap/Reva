class Pig < ActiveRecord::Base
	belongs_to :litter
	has_many :litters
	after_save :set_birthday
	protokoll :ear_notch_number, :pattern => "%y%m###"


	# after_initialize do
	#   if self.new_record?
	#     self.ear_notch_number = :ear_notch_number
	#   end
	# end

	before_create do
    	self.ear_notch_number = :ear_notch_number
	end

	def autocorrect_values
		"#{self.ear_notch_number}"[2..-1] + " - #{self.date_of_birth.strftime('%Y')}"
	end

	private def set_birthday
		if self.litter_id != 0
			self.update_column(:date_of_birth, self.litter.actual_date_of_farrowing)
			self.update_column(:dam_id, self.litter.dam_id)
			self.update_column(:sire_id, self.litter.sire_id)
		end
	end
end
