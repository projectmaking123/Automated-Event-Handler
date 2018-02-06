class Admin::BaseController < ApplicationController
  before_filter :ensure_admin_user!
  
  def ensure_admin_user!
    unless current_user&.admin?
      redirect_to root_path, danger: "Restricted"
    end
  end
end