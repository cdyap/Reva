class CauseOfRemoval < ActiveRecord::Base
	belongs_to :pig
	validates :pig_id, presence: true
	validates :date_of_removal, presence: true
	validates :sale, :inclusion => { :in => [true, false] }
	validates :weight_on_removal, presence: true
	validates :remarks, presence: false

	scope :mortality_per_month, -> (date) { where('date_of_removal >= ? AND date_of_removal <= ? AND sale = 0', date.chomp("-01")<<"-01", date.chomp("-01")<<"-31")}
	scope :mortality_per_year, -> (date) { where('date_of_removal >= ? AND date_of_removal <= ? AND sale = 0', date, date.chomp("-01-01")<<"-12-31")}
	def reason 
		sale ? 'Sold' : 'Died'
	end
end
