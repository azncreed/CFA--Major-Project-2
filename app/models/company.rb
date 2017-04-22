class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :jobs
  has_one :cprofile

  after_create :create_cprofile

   def create_cprofile
  	Cprofile.create(company_id: id)
  end
end
