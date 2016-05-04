class Building < ActiveRecord::Base
	has_many :pens, foreign_key: :building_number
end
