class Litter < ActiveRecord::Base
	has_many :pigs
	accepts_nested_attributes_for :pigs, allow_destroy: true
end
