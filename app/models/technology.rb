class Technology < ApplicationRecord
  has_many :skills, dependent: :destroy
  has_many :profiles, through: :skills

  accepts_nested_attributes_for :skills, allow_destroy: true
  scope :filter_by_name, -> (name) { where("name ILIKE ?", "%#{name}%") }

  def self.search(params)
    technologies = Technology.all
    technologies = technologies.filter_by_name(params[:query]) if params[:query].present?
    technologies
  end
end