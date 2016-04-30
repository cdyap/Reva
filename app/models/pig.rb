class Pig < ActiveRecord::Base
	belongs_to :litter
	after_save :set_birthday
	protokoll :ear_notch_number, :pattern => "%y%m###"

	after_initialize do
	  if self.new_record?
	    self.ear_notch_number = :ear_notch_number
	  end
	end

	private def set_birthday
		if self.litter_id != 0
			self.update_column(:date_of_birth, self.litter.actual_date_of_farrowing)
		end
	end
end
