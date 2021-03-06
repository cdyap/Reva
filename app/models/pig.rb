class Pig < ActiveRecord::Base
	belongs_to :litter
	has_many :litters
	has_one :cause_of_removal
	after_create :set_birthday
	#after_initialize :set_earnotch
	#protokoll :ear_notch_number, :pattern => "%y%m###"
	#validates :breed, presence: true
	validates :birth_weight, presence: true
	validates :birth_weight, :numericality => { :greater_than_or_equal_to => 0 }
	validates :sex, presence: true
	

	def self.set_ear_notch
		@maxvalue = ActiveRecord::Base.connection.execute("select max(ear_notch_number) from pigs where pigs.ear_notch_number like '#{DateTime.now.strftime('%y%m')}%'").first[0]
	  	if @maxvalue.nil?
			Integer("#{DateTime.now.strftime('%y%m')}000")
		else
			@maxvalue + 1
		end
	end

	def self.to_csv
		CSV.generate do |csv|
		    csv << column_names
		    all.each do |item|
		      csv << item.attributes.values_at(*column_names)
		    end
	  	end
	end

	# before_create do
 #    	self.ear_notch_number = :ear_notch_number
	# end

	def autocorrect_values
		"#{self.ear_notch_number}"[2..-1] + " - #{self.date_of_birth.strftime('%Y')}"
	end

	def set_earnotch
		if self.new_record?
			self.ear_notch_number = Pig.set_ear_notch
		end
	end

	def alive
		#removed ? self.cause_of_removal.reason : 'Alive'
		removal = CauseOfRemoval.where(pig_id: self.pig_id).first
		(removal.nil?) ? 'Alive' : removal.reason
	end

	private def set_birthday
		if !self.litter_id.nil?
			self.update_column(:date_of_birth, self.litter.actual_date_of_farrowing)
			self.update_column(:dam_id, self.litter.dam_id)
			self.update_column(:sire_id, self.litter.sire_id)
		end
		self.update_column(:ear_notch_number, self.ear_notch_number+Integer(DateTime.now.strftime('%y'))*100000)
	end
end
