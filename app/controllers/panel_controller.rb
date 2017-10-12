class PanelController < ApplicationController
  def admin
    @users = User.all
    @companies = Company.all
    @complaints = Complaint.all
  end
end
