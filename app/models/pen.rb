class Pen < ActiveRecord::Base
	has_many :headcounts
	#belongs_to :building, foreign_key: :building_number
end
