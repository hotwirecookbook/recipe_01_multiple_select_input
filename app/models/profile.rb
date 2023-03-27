class Profile < ApplicationRecord
  has_many :skills
  has_many :technologies, through: :skills

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end