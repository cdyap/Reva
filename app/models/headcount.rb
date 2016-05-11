class Headcount < ActiveRecord::Base
	belongs_to :pen
	scope :headcountpens, ->(date) { where('headcount_date = ?', date)}
	#http://stackoverflow.com/questions/1754411/how-to-select-date-from-datetime-column
end