class DashboardController < ApplicationController
  def index
    @companies = Company.all.length
    @users = User.all.length
    @complaints = Complaint.all.length
  end
end
