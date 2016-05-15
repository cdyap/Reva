class Litter < ActiveRecord::Base
	has_many :pigs
	accepts_nested_attributes_for :pigs, allow_destroy: true
	belongs_to :dam, class_name: "Pig"
	belongs_to :sire, class_name: "Pig"

	validates :parity_number, presence: true
	validates :actual_date_of_farrowing, presence: true
	validates :due_to_farrow, presence: true
	validates :mummified_piglets, presence: true
	validates :stillborn_piglets, presence: true
	validates :date_bred, presence: true
	validates :litter_size_at_birth, presence: true
	
	after_save :set_lsb

	scope :litters_per_month, -> (date) { where('actual_date_of_farrowing >= ? AND actual_date_of_farrowing <= ?', date<<"-01", date.chomp("-01")<<"-31")}
	scope :litters_per_year, -> (date) { where('actual_date_of_farrowing >= ? AND actual_date_of_farrowing <= ?', date<<"-01-01", date.chomp("-01-01")<<"-12-31")}

	def parameters_litters_farrowed(time)
		self.litters_per_time(time).count
	end

	def parameters_LSB(time)
		self.litters_per_time(time).sum(:litter_size_at_birth);
	end

	private def set_lsb
		self.update_column(:litter_size_at_birth, self.mummified_piglets + self.stillborn_piglets + self.pigs.size)
	end
end
