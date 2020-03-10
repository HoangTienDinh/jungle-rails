class User < ActiveRecord::Base

  has_secure_password
  
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 3 }
  before_save :downcase_fields

  def downcase_fields
    self.email.downcase!
  end

end
