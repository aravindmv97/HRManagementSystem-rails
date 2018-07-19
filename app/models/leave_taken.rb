class LeaveTaken < ApplicationRecord
  belongs_to :employee_detail

  def self.average_leave
  	return (LeaveTaken.sum(:days) / EmployeeDetail.count).to_f
  end
end
