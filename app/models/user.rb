class User < ApplicationRecord
  has_one_attached :user_pic
	after_create :welcome_send

	  def welcome_send
	    UserMailer.welcome_email(self).deliver_now
	  end
	  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :cart
  has_many :orders
end
