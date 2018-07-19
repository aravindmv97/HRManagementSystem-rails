class LowPerformanceHighSalariesController < ApplicationController
	def index
		@employees = Performance.get_low_performer_high_salary(params[:salary])
		@employees.each do |e|
			@average = e["average_salary"]
			@performance = e["performance"]
		end
		if @employees.nil?
			@employees = []
		end
	end
end
