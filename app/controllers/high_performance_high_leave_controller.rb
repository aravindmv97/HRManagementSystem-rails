class HighPerformanceHighLeaveController < ApplicationController
	def index
		@employees = EmployeeDetail.high_performance_high_leave
		if @employees.nil?
			@employees = []
		end
	end
end
