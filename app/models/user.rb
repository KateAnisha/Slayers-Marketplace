class User < ApplicationRecord
  rolify :role_cname => 'Roles'
  has_many :jobs, dependent: :destroy
  has_one :role
  has_one :slayer_info, dependent: :destroy
  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
