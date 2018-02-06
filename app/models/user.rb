class User < ActiveRecord::Base
  has_secure_password
  validates :role, inclusion: %w(admin user)
  
  def admin?
    self.role == 'admin'
  end
end
