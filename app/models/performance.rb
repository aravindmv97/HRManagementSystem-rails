class Performance < ApplicationRecord
  belongs_to :employee_detail



  def self.get_low_performer_high_salary(salary=nil)
    
    low_perf = []
    
    if salary.present?
      average_salary = salary
    else
      average_salary = Salary.avg_salary
    end
  	   
  	average_performances = EmployeeDetail.get_average_performance()
  	average_performances.each do |value|
      if value["salary"].present? and value["points"].present?
    		if value["salary"].to_i >= average_salary.to_i && value["points"] < 5
          temp_obj_array = {}
    			temp_obj_array["ename"] = value["name"]
          temp_obj_array["salary"] = value["salary"]
          temp_obj_array["average_salary"] = Salary.avg_salary
          temp_obj_array["performance"] = value["points"]
          low_perf << temp_obj_array
    		end
      end
  	end
    return low_perf

  end
end
