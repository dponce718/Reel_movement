class Program < ActiveRecord::Base
	belongs_to :user
	 include IceCube 
 

	 def schedul
schedule = IceCube::Schedule.new(now = Time.zone.now) do |s|
  s.add_recurrence_rule IceCube::Rule.monthly(2).day_of_week(1 => [1], 2 => [-1])
end
end

 
end






 
 

 
