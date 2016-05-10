class CauseOfRemoval < ActiveRecord::Base
	belongs_to :pig
	validates :pig_id, presence: true
	validates :date_of_removal, presence: true
	validates :sale, :inclusion => { :in => [true, false] }
	validates :weight_on_removal, presence: true
	validates :remarks, presence: false

	def reason 
		sale ? 'Sold' : 'Died'
	end
end
