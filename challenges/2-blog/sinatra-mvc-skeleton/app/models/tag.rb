class Tag < ActiveRecord::Base

  has_many :related_subjects
  has_many :entries, through: :related_subjects
end
