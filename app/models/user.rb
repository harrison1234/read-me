

class User < ActiveRecord::Base


validates :password, :presence => true,
					 :confirmation => true,
					 :length => {:within => 6..40},
                     :on => :create,
                     :format => {:with => /\A.*(?=.{10,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).*\Z/ }


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :pins
end

