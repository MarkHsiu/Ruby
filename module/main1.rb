$LOAD_PATH << '.'

require "support"

class Decade
include Week
	YRS=10
	puts YRS*2
	def no_of_months
		puts Week::FIRST_DAY
		number=Decade::YRS*12
		puts number
	end	
end

d1=Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months
puts Decade::YRS