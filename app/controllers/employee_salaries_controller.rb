class EmployeeSalariesController < ApplicationController
	def index
		id = params[:id]
		month = params[:month]
		if id and month
			@salaries = Salary.employee_salary(id,month)
		else
			@salaries = []
		end

		if @salaries.nil?
			@salaries = []
		end
	end
end
