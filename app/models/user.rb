class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # attr_accessible  :email, :password, :password_confirmation, :username
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable
end