class Manager < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :loginID, presence: true, length: {minimum: 6}
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
