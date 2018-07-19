class Salary < ApplicationRecord
  belongs_to :employee_detail

  def self.employee_salary(id=nil,month=nil)
    arr = {}
    array = []
    if Salary.find_by(:employee_detail_id => id).present? and Salary.find_by(:month => month).present?
    	if id.present? and month.present?
    		 arr["salary"] = Salary.find_by(:employee_detail_id => id, :month => month).emp_salary
    	elsif id.present? 
    		 arr["salary"] = Salary.find_by(:employee_detail_id => id).emp_salary
      else
         EmployeeDetail.pluck(:id).each do |id|
            arr = {}
            arr["month"] = Salary.find_by(:employee_detail_id => id).month
            arr["salary"] = Salary.find_by(:employee_detail_id => id).emp_salary
            arr["ename"] = EmployeeDetail.find_by(:id => id).emp_name
            array << arr
         end
         return array
    	end
         arr["ename"] = EmployeeDetail.find_by(:id => id).emp_name
         array << arr
         return array
    end
  end

  def self.avg_salary(limit=nil)
  	average_salary = SalaryDetail.get_average_salary
  	return average_salary
  end

end

