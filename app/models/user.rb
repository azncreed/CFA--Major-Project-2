class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  

  after_create :create_profile

  has_one :profile
  has_many :applies

  def create_profile
  	Profile.create(user_id: id)
  end
end
