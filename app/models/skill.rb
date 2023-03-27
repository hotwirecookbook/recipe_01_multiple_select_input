class Skill < ApplicationRecord
  belongs_to :technology
  belongs_to :profile

  delegate :name, to: :technology
end