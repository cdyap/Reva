class CauseOfRemoval < ActiveRecord::Base
	belongs_to :pig
	validates :pig_id, presence: true
	validates :date_of_removal, presence: true
	validates :mode_of_removal?, presence: true
	validates :weight_on_removal, presence: true
	validates :remarks, presence: false

end
