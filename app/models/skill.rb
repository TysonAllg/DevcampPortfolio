class Skill < ApplicationRecord
  validates_presence_of :title, :percent_utilized

  after_initialize :set_defaults
  def set_defaults
    self.badge ||= "http://placehold.it/250X250"
  end
end