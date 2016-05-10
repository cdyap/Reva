class Headcount < ActiveRecord::Base
	belongs_to :pen
	scope :headcountpens, ->(date) { where('headcount_date >= ? AND headcount_date <= ?', date.beginning_of_day, date.end_of_day)}
	#http://stackoverflow.com/questions/1754411/how-to-select-date-from-datetime-column
end