class EmployeeDetail < ApplicationRecord
	has_many :salaries
	has_many :performances
	has_many :leave_takens
	has_one :salary_detail

	
	def self.get_average_performance
		
		average_performances = []
		EmployeeDetail.all.each do |employee|
			average_performance = {}
			average_performance["employee_id"] = employee.id
			average_performance["points"] = employee.performances.average(:points)
			average_performance["name"] = employee.emp_name
			average_performance["salary"] = SalaryDetail.get_salary(employee.id)
			average_performances << average_performance
		end
		return average_performances
	end

	def self.high_performance_high_leave
		emp_details = []
		average_leave = LeaveTaken.average_leave
		average_salary = Salary.avg_salary
		EmployeeDetail.get_average_performance.each do |value|
			total_leave_taken = LeaveTaken.where(:employee_detail_id => value["employee_id"]).sum(:days)
			
			if value["salary"].to_i > average_salary.to_i and total_leave_taken.to_f > average_leave.to_f
				 temp_obj_array = {}
				 temp_obj_array["ename"] = value["name"]
				 temp_obj_array["salary"] = value["salary"]
				 temp_obj_array["leave_taken"] = total_leave_taken.to_i
				 emp_details << temp_obj_array
			end
		end
		return emp_details
	end

end
