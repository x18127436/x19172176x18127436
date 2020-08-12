class User < ApplicationRecord
	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :meetings, dependent: :destroy
         has_many :comments, dependent: :destroy

         validate :password_complexity

def password_complexity
  if password.present?
     #if !password.match(/^(?=.*[a-z])(?=.*[A-Z])/) 
     if !password.match(/(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}/) 
       errors.add :password, "must contain at least one uppercase letter, one lowercase letter and one numerical digit."
     end
  end


  end
end
