class HighPaidController < ApplicationController
	def index
		@high_paid_employee = SalaryDetail.high_paid(params[:q])
	end
end
