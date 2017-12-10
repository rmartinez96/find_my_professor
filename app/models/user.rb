class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def admin?
  	return role_id == 99
  end


  def professor?
  	return role_id == 80
  end

  def student?
  	return role_id == 70
  end

end


