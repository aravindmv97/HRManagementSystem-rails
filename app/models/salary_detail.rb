class SalaryDetail < ApplicationRecord
  belongs_to :employee_detail

  def self.get_average_salary
		return SalaryDetail.average(:salary).to_f
	end

  def self.get_salary(id)
  	return SalaryDetail.find_by(:employee_detail_id => id).salary
  end

  def self.high_paid(limit=10)
  	names = []
  	SalaryDetail.order("salary DESC").limit(limit.to_i).each do |salary|
  		temp_array = {}
      temp_array["ename"] = salary.employee_detail.emp_name
      temp_array["salary"] = salary.salary
      names << temp_array
  	end
  	return names.uniq
  end

end
